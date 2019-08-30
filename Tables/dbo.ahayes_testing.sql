CREATE TABLE [dbo].[ahayes_testing]
(
[col1] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[col2] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ahayes_testing] ADD CONSTRAINT [PK__ahayes_t__357D0D3E014935CB] PRIMARY KEY CLUSTERED  ([col1]) ON [PRIMARY]
GO
