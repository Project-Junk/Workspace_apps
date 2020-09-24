.class final Lcom/coloros/settings/privacy/ColorMorePrivacySettings$1;
.super Lcom/android/settings/search/a;
.source "ColorMorePrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ColorMorePrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
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

    .line 36
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    .line 37
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/android/settings/search/e;

    invoke-direct {v1, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v2, "privacy_more_settings"

    .line 40
    iput-object v2, v1, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v2, 0x7f0809c5

    .line 41
    iput v2, v1, Lcom/android/settings/search/e;->iconResId:I

    const v2, 0x7f120dc9

    .line 42
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 43
    iput-object v0, v1, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 44
    const-class p1, Lcom/coloros/settings/privacy/ColorMorePrivacySettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    .line 45
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    :array_0
    .array-data 4
        0x7f1210e3
        0x7f120dc9
    .end array-data
.end method
