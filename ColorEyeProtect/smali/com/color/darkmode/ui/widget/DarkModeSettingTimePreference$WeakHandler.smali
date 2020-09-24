.class public final Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeakHandler"
.end annotation


# instance fields
.field private weak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;->weak:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;->weak:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;

    invoke-static {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->access$updateTime(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;Lcom/color/darkmode/ui/widget/LocalOppoTimePicker;)V

    goto :goto_0

    :cond_1
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type com.color.darkmode.ui.widget.LocalOppoTimePicker"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
