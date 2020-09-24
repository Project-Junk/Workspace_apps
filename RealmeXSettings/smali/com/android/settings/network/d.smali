.class public final Lcom/android/settings/network/d;
.super Ljava/lang/Object;
.source "NetworkResetRestrictionChecker.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/network/d;->a:Landroid/content/Context;

    const-string/jumbo v0, "user"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/network/d;->b:Landroid/os/UserManager;

    return-void
.end method
