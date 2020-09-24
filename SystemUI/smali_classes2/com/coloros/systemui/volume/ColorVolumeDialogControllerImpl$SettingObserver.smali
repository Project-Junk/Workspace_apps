.class final Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ColorVolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    .line 1080
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    .line 1075
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string p1, "zen_mode_config_etag"

    .line 1077
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1800(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 1084
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1800(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1085
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1800(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1095
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1096
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1900(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1098
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->ZEN_MODE_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1099
    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2000(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z

    move-result p2

    or-int/2addr p1, p2

    :cond_1
    if-eqz p1, :cond_2

    .line 1103
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$SettingObserver;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    :cond_2
    return-void
.end method
