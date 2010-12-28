class GroupWebsitesController < ApplicationController
  # GET /group_websites
  # GET /group_websites.xml
  def index
    @group_websites = GroupWebsite.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @group_websites }
    end
  end

  # GET /group_websites/1
  # GET /group_websites/1.xml
  def show
    @group_website = GroupWebsite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group_website }
    end
  end

  # GET /group_websites/new
  # GET /group_websites/new.xml
  def new
    @group_website = GroupWebsite.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group_website }
    end
  end

  # GET /group_websites/1/edit
  def edit
    @group_website = GroupWebsite.find(params[:id])
  end

  # POST /group_websites
  # POST /group_websites.xml
  def create
    @group_website = GroupWebsite.new(params[:group_website])

    respond_to do |format|
      if @group_website.save
        format.html { redirect_to(@group_website, :notice => 'Group website was successfully created.') }
        format.xml  { render :xml => @group_website, :status => :created, :location => @group_website }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group_website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /group_websites/1
  # PUT /group_websites/1.xml
  def update
    @group_website = GroupWebsite.find(params[:id])

    respond_to do |format|
      if @group_website.update_attributes(params[:group_website])
        format.html { redirect_to(@group_website, :notice => 'Group website was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group_website.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /group_websites/1
  # DELETE /group_websites/1.xml
  def destroy
    @group_website = GroupWebsite.find(params[:id])
    @group_website.destroy

    respond_to do |format|
      format.html { redirect_to(group_websites_url) }
      format.xml  { head :ok }
    end
  end
end
