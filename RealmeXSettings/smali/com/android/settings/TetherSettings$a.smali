.class final Lcom/android/settings/TetherSettings$a;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/TetherSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 1

    .line 512
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    .line 513
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/android/settings/TetherSettings$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TetherSettings;

    if-eqz v0, :cond_0

    .line 529
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onTetheringFailed()V
    .locals 0

    .line 523
    invoke-direct {p0}, Lcom/android/settings/TetherSettings$a;->a()V

    return-void
.end method

.method public final onTetheringStarted()V
    .locals 0

    .line 518
    invoke-direct {p0}, Lcom/android/settings/TetherSettings$a;->a()V

    return-void
.end method
