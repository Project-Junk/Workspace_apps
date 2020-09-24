.class final Lcom/android/settings/ResetNetworkConfirm$c;
.super Landroid/os/Handler;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/ResetNetworkConfirm;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$c;->a:Lcom/android/settings/ResetNetworkConfirm;

    .line 211
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 217
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$c;->b:Landroid/content/Context;

    const v0, 0x7f12123f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
