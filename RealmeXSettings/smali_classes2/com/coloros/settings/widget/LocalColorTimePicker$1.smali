.class final Lcom/coloros/settings/widget/LocalColorTimePicker$1;
.super Landroid/os/Handler;
.source "LocalColorTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/LocalColorTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/LocalColorTimePicker;


# direct methods
.method constructor <init>(Lcom/coloros/settings/widget/LocalColorTimePicker;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker$1;->a:Lcom/coloros/settings/widget/LocalColorTimePicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 50
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker$1;->a:Lcom/coloros/settings/widget/LocalColorTimePicker;

    invoke-static {p1}, Lcom/coloros/settings/widget/LocalColorTimePicker;->a(Lcom/coloros/settings/widget/LocalColorTimePicker;)Lcom/coloros/settings/widget/LocalColorTimePicker$a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker$1;->a:Lcom/coloros/settings/widget/LocalColorTimePicker;

    invoke-static {p1}, Lcom/coloros/settings/widget/LocalColorTimePicker;->b(Lcom/coloros/settings/widget/LocalColorTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/coloros/settings/widget/LocalColorTimePicker$1;->a:Lcom/coloros/settings/widget/LocalColorTimePicker;

    invoke-static {p1}, Lcom/coloros/settings/widget/LocalColorTimePicker;->a(Lcom/coloros/settings/widget/LocalColorTimePicker;)Lcom/coloros/settings/widget/LocalColorTimePicker$a;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/widget/LocalColorTimePicker$1;->a:Lcom/coloros/settings/widget/LocalColorTimePicker;

    invoke-static {v0}, Lcom/coloros/settings/widget/LocalColorTimePicker;->b(Lcom/coloros/settings/widget/LocalColorTimePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/coloros/settings/widget/LocalColorTimePicker$a;->a(Ljava/util/Calendar;)V

    :cond_1
    :goto_0
    return-void
.end method
