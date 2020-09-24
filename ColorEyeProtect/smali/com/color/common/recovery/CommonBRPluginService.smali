.class public final Lcom/color/common/recovery/CommonBRPluginService;
.super Lcom/coloros/backup/sdk/v2/component/BRPluginService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/coloros/backup/sdk/v2/component/BRPluginService;->onCreate()V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v0, "CommonBRPluginService-->onCreate"

    invoke-virtual {p0, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    return-void
.end method
