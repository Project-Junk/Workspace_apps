.class public Lcom/android/settings/accounts/TopLevelAccountEntryPreferenceController;
.super Lcom/android/settings/core/a;
.source "TopLevelAccountEntryPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 8

    .line 44
    new-instance v0, Lcom/android/settingslib/b/a;

    iget-object v1, p0, Lcom/android/settings/accounts/TopLevelAccountEntryPreferenceController;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/b/a;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/b/a$a;)V

    .line 46
    invoke-virtual {v0}, Lcom/android/settingslib/b/a;->a()[Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    .line 50
    array-length v4, v1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    .line 54
    array-length v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    .line 56
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_3

    if-lez v4, :cond_3

    .line 57
    iget-object v6, p0, Lcom/android/settings/accounts/TopLevelAccountEntryPreferenceController;->mContext:Landroid/content/Context;

    aget-object v7, v1, v5

    invoke-virtual {v0, v6, v7}, Lcom/android/settingslib/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 58
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 62
    invoke-virtual {v2, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 51
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accounts/TopLevelAccountEntryPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1200c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_3
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
