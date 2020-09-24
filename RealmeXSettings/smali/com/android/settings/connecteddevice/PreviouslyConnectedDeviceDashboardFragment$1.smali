.class final Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment$1;
.super Lcom/android/settings/search/a;
.source "PreviouslyConnectedDeviceDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/android/settings/search/e;

    invoke-direct {v1, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string p1, "saved_device_list"

    .line 79
    iput-object p1, v1, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const p1, 0x7f12061b

    .line 80
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 84
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
