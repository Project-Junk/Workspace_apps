.class Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$1;->a:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference$1;->a:Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-static {p0, p1}, Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;->a(Lcom/color/eyeprotect/ui/widget/ProtectEyesSettingTimePreference;Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V

    :goto_0
    return-void
.end method
