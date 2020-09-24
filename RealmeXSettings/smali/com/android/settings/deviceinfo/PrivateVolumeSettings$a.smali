.class final Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;I)V
    .locals 0

    .line 904
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 905
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;->a:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    .line 906
    iput p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;)Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
    .locals 0

    .line 900
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;->a:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    return-object p0
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 911
    monitor-enter p0

    .line 912
    :try_start_0
    iget p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;->b:I

    if-nez p1, :cond_0

    .line 913
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;->a:Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a$1;

    invoke-direct {p2, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$a;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 920
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
