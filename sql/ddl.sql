CREATE DATABASE [country_score]
GO
ALTER DATABASE [country_score] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [country_score] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [country_score] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [country_score] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [country_score] SET ARITHABORT OFF 
GO
ALTER DATABASE [country_score] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [country_score] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [country_score] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [country_score] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [country_score] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [country_score] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [country_score] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [country_score] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [country_score] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [country_score] SET  DISABLE_BROKER 
GO
ALTER DATABASE [country_score] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [country_score] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [country_score] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [country_score] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [country_score] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [country_score] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [country_score] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [country_score] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [country_score] SET  MULTI_USER 
GO
ALTER DATABASE [country_score] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [country_score] SET DB_CHAINING OFF 
GO
ALTER DATABASE [country_score] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [country_score] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [country_score] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [country_score] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [country_score] SET QUERY_STORE = ON
GO
ALTER DATABASE [country_score] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [country_score]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 01/04/2024 12:58:17 ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dev]    Script Date: 01/04/2024 12:58:17 ******/
CREATE USER [dev] FOR LOGIN [dev] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [SQLArcExtensionUserRole]    Script Date: 01/04/2024 12:58:17 ******/
CREATE ROLE [SQLArcExtensionUserRole]
GO
ALTER ROLE [SQLArcExtensionUserRole] ADD MEMBER [NT AUTHORITY\SYSTEM]
GO
ALTER ROLE [db_owner] ADD MEMBER [dev]
GO
/****** Object:  Table [dbo].[child_indexes]    Script Date: 01/04/2024 12:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[child_indexes](
	[country_id] [nvarchar](200) NULL,
	[index_score] [float] NULL,
	[outcome_score] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[countries]    Script Date: 01/04/2024 12:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries](
	[id] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_countries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [country_score] SET  READ_WRITE 
GO
