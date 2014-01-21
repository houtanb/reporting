function o = write(o, fid)
%function o = write(o, fid)
% Write a Graph object
%
% INPUTS
%   o   [graph]   graph object
%   fid [integer] file id
%
% OUTPUTS
%   o   [graph] graph object
%
% SPECIAL REQUIREMENTS
%   none

% Copyright (C) 2013-2014 Dynare Team
%
% This file is part of Dynare.
%
% Dynare is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% Dynare is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with Dynare.  If not, see <http://www.gnu.org/licenses/>.

assert(fid ~= -1);
o = writeGraphFile(o);

if ~isempty(o.title)
    fprintf(fid,'\\begin{tabular}[x]{@{}c@{}}%s\\\\',o.title);
end

fprintf(fid, '\\input{%s}', o.figname);

if ~isempty(o.title)
    fprintf(fid,'\\end{tabular}');
end
end