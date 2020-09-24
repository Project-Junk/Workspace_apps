.class final Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$1;
.super Landroid/os/Handler;
.source "ProtectEyesSettingTimePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$1;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference$1;->a:Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/settings/widget/LocalOppoTimePicker;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;->a(Lcom/coloros/settings/feature/display/nightmode/ProtectEyesSettingTimePreference;Lcom/coloros/settings/widget/LocalOppoTimePicker;)V

    :goto_0
    return-void
.end method
