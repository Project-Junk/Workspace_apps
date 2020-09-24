.class public final Lcom/android/settings/wifi/e;
.super Ljava/lang/Object;
.source "WifiConnectListener.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/wifi/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    .line 42
    iget-object p1, p0, Lcom/android/settings/wifi/e;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x7f1219af

    const/4 v1, 0x0

    .line 43
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method
