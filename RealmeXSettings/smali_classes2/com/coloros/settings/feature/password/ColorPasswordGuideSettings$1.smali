.class final Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings$1;
.super Lcom/android/settings/search/a;
.source "ColorPasswordGuideSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "screen_lock_password_setup"

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "privacy_password_setup"

    .line 233
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "fingerprint_setup"

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_2
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "face_setup"

    .line 239
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
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

    .line 168
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    const-class v0, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "xml_title_guide"

    .line 176
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "password_guide_lock_category"

    .line 179
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f121001

    .line 180
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "password_guide_other_category"

    .line 182
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f121002

    .line 183
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "screen_lock_password_setup"

    .line 185
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f121467

    .line 186
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "privacy_password_setup"

    .line 189
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f1210da

    .line 190
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v4

    .line 194
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v5

    if-eqz v4, :cond_1

    const-string v6, "face_setup"

    .line 196
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v6, 0x7f1200ed

    .line 197
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v5, :cond_2

    const-string v5, "fingerprint_setup"

    .line 200
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v5, 0x7f1200ee

    .line 201
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v5, 0x0

    .line 204
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const v7, 0x7f0809b5

    if-ge v5, v6, :cond_3

    .line 205
    new-instance v6, Lcom/android/settings/search/e;

    invoke-direct {v6, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v6, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 207
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v6, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 208
    iput-object v1, v6, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 209
    iput-object v0, v6, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 210
    iput v7, v6, Lcom/android/settings/search/e;->iconResId:I

    .line 211
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    :cond_3
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 215
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "key_oppo_fingerprint_face_unlock"

    .line 216
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f120f60

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 218
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 219
    iput-object v0, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 220
    iput v7, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 221
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p2
.end method
