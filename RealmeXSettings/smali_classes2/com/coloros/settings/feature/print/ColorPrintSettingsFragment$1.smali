.class final Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment$1;
.super Lcom/android/settings/search/a;
.source "ColorPrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 473
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

    .line 477
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    .line 478
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/bc;->a(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v0

    .line 480
    new-instance v1, Lcom/android/settings/search/e;

    invoke-direct {v1, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0809ba

    .line 481
    iput v2, v1, Lcom/android/settings/search/e;->iconResId:I

    .line 482
    iput-object v0, v1, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 483
    const-class v0, Lcom/coloros/settings/feature/print/ColorPrintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const-string v0, "oppo_reset_key"

    .line 484
    iput-object v0, v1, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v0, 0x7f1210a2

    .line 485
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 486
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    :array_0
    .array-data 4
        0x7f120fa8
        0x7f1210a2
    .end array-data
.end method
