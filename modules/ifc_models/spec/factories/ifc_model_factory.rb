#-- copyright
# OpenProject is a project management system.
# Copyright (C) 2012-2018 the OpenProject Foundation (OPF)
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License version 3.
#
# OpenProject is a fork of ChiliProject, which is a fork of Redmine. The copyright follows:
# Copyright (C) 2006-2017 Jean-Philippe Lang
# Copyright (C) 2010-2013 the ChiliProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
# See docs/COPYRIGHT.rdoc for more details.
#++

FactoryBot.define do
  factory :ifc_model, class: ::IFCModels::IFCModel do
    title { 'My IFC model' }
    uploader factory: :user
    ifc_attachment do
      FileHelpers.mock_uploaded_file name: "model.ifc", content_type: 'application/binary', binary: true
    end

    factory :ifc_model_converted do
      xkt_attachment do
        FileHelpers.mock_uploaded_file name: "model.xkt", content_type: 'application/binary', binary: true
      end
      metadata_attachment do
        FileHelpers.mock_uploaded_file name: "model.json", content_type: 'application/json', binary: true
      end
    end
  end
end