-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/lfeNHi
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [category] (
    [category_id] varchar  NOT NULL ,
    [category] varchar  NOT NULL ,
    CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED (
        [category_id] ASC
    )
)

CREATE TABLE [subcategory] (
    [subcategory_id] varchar  NOT NULL ,
    [subcategory] varchar  NOT NULL ,
    CONSTRAINT [PK_subcategory] PRIMARY KEY CLUSTERED (
        [subcategory_id] ASC
    )
)

CREATE TABLE [contact] (
    [contact_id] int  NOT NULL ,
    [first_name] varchar  NOT NULL ,
    [last_name] varchar  NOT NULL ,
    [email] varchar  NOT NULL ,
    CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED (
        [contact_id] ASC
    )
)

CREATE TABLE [campaign] (
    [cf_id] int  NOT NULL ,
    [contact_id] int  NOT NULL ,
    [company_name] varchar  NOT NULL ,
    [description] varchar  NOT NULL ,
    [goal] float  NOT NULL ,
    [pledged] float  NOT NULL ,
    [outcome] varchar  NOT NULL ,
    [backers_count] int  NOT NULL ,
    [country] varchar  NOT NULL ,
    [currency] varchar  NOT NULL ,
    [launch_date] varchar  NOT NULL ,
    [end_date] varchar  NOT NULL ,
    [category_id] varchar  NOT NULL ,
    [subcategory_id] varchar  NOT NULL ,
    CONSTRAINT [PK_campaign] PRIMARY KEY CLUSTERED (
        [cf_id] ASC
    )
)

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_contact_id] FOREIGN KEY([contact_id])
REFERENCES [contact] ([contact_id])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_contact_id]

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_category_id] FOREIGN KEY([category_id])
REFERENCES [category] ([category_id])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_category_id]

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_subcategory_id] FOREIGN KEY([subcategory_id])
REFERENCES [subcategory] ([subcategory_id])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_subcategory_id]

COMMIT TRANSACTION QUICKDBD