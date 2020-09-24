.class public final Lcom/coloros/settings/feature/storage/controller/a;
.super Lcom/android/settingslib/core/a;
.source "ColorStorageItemPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/controller/a$a;
    }
.end annotation


# static fields
.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/android/settingslib/core/instrumentation/d;

.field private final g:Landroidx/preference/PreferenceFragmentCompat;

.field private final h:Lcom/android/settingslib/deviceinfo/e;

.field private i:Landroid/os/storage/VolumeInfo;

.field private j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroidx/preference/PreferenceScreen;

.field private l:J

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/feature/storage/controller/a;->b:Landroid/net/Uri;

    .line 82
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/feature/storage/controller/a;->c:Landroid/net/Uri;

    .line 83
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/feature/storage/controller/a;->d:Landroid/net/Uri;

    const-string v0, "external"

    .line 84
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/storage/controller/a;->e:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/storage/VolumeInfo;)V
    .locals 2

    .line 108
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    const-wide/16 v0, -0x1

    .line 104
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->l:J

    .line 105
    iput-wide v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->m:J

    .line 109
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/controller/a;->g:Landroidx/preference/PreferenceFragmentCompat;

    .line 110
    iput-object p3, p0, Lcom/coloros/settings/feature/storage/controller/a;->i:Landroid/os/storage/VolumeInfo;

    .line 111
    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageManager;

    .line 112
    new-instance p3, Lcom/android/settingslib/deviceinfo/c;

    invoke-direct {p3, p2}, Lcom/android/settingslib/deviceinfo/c;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object p3, p0, Lcom/coloros/settings/feature/storage/controller/a;->h:Lcom/android/settingslib/deviceinfo/e;

    .line 113
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->f:Lcom/android/settingslib/core/instrumentation/d;

    .line 1118
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    const/4 p2, 0x1

    const-string p3, "pref_photos"

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1119
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    const/4 p2, 0x2

    const-string p3, "pref_audios"

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1120
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    const/4 p2, 0x4

    const-string p3, "pref_videos"

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1121
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    const/4 p2, 0x3

    const-string p3, "pref_documents"

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1122
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    const/16 p2, 0x10

    const-string p3, "pref_apks"

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1123
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    const/16 p2, 0x11

    const-string p3, "pref_apps"

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1124
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    const/16 p2, 0x12

    const-string p3, "pref_others"

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1125
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    const/16 p2, 0x13

    const-string p3, "pref_system"

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/controller/a;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/controller/a;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/controller/a;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/controller/a;->g:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "result_bundle"

    .line 308
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "delete_file_data"

    .line 310
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-lez p2, :cond_0

    const-string p2, "delete_file_list_data"

    .line 312
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2298
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->a:Ljava/util/ArrayList;

    .line 314
    new-instance p1, Lcom/coloros/settings/feature/storage/controller/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/storage/controller/a$a;-><init>(Lcom/coloros/settings/feature/storage/controller/a;B)V

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/storage/controller/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 10

    .line 254
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->k:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/a;->k:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_3

    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    .line 2271
    sget-boolean p1, Lcom/coloros/settings/a;->h:Z

    if-eqz p1, :cond_0

    .line 2272
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 2274
    :cond_0
    iget-wide v1, p0, Lcom/coloros/settings/feature/storage/controller/a;->l:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 2275
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 2278
    :cond_1
    invoke-static {p2, p3}, Lcom/coloros/settings/utils/bf;->b(J)Ljava/lang/String;

    move-result-object p1

    .line 2279
    iget-wide p2, p0, Lcom/coloros/settings/feature/storage/controller/a;->l:J

    invoke-static {p2, p3}, Lcom/coloros/settings/utils/bf;->a(J)F

    move-result p2

    .line 2280
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    .line 2281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2282
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    add-float v2, p2, v1

    .line 2284
    invoke-static {v2, p3}, Lcom/coloros/settings/utils/bf;->a(FLjava/lang/String;)F

    move-result v2

    .line 2285
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    float-to-double v4, v2

    const-string v6, "0.00"

    invoke-static {v3, v4, v5, v6}, Lcom/coloros/settings/utils/bf;->a(Landroid/content/Context;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2288
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getSystemCategorySizeText: systemSize: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", unit: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", sizeValue: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", diff: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", finalSize: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", finalSizeStr:: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",   statusText: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageItemPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    invoke-static {p1, v4, v5, v6, p3}, Lcom/coloros/settings/utils/bf;->a(Landroid/content/Context;DLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 262
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 264
    :goto_0
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final a(JJ)V
    .locals 0

    .line 302
    iput-wide p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->l:J

    .line 303
    iput-wide p3, p0, Lcom/coloros/settings/feature/storage/controller/a;->m:J

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 241
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->k:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x0

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/a;->k:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/a;->j:Landroid/util/SparseArray;

    .line 245
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v1, :cond_0

    .line 247
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/coloros/settings/feature/storage/c;->a(Landroid/content/Context;I)Lcom/coloros/settings/feature/storage/widgets/a;

    move-result-object v0

    .line 248
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_system"

    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    const v1, 0x7f1207fb

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v3

    :cond_2
    const-string v2, "pref_others"

    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1219
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/a;->a:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    .line 1222
    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    const-class v5, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1223
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1224
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    const v6, 0x7f12159a

    .line 1225
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "navigate_title_text"

    .line 1224
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/controller/a;->a:Ljava/util/ArrayList;

    const-string v6, "path_map"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v5, "is_sd_card"

    .line 1227
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1228
    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1230
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/controller/a;->g:Landroidx/preference/PreferenceFragmentCompat;

    const/16 v5, 0x66

    invoke-virtual {v4, v2, v5}, Landroidx/preference/PreferenceFragmentCompat;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v3

    :goto_0
    if-eqz v2, :cond_4

    return v3

    :cond_4
    const-string v2, "pref_apps"

    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_5

    .line 2178
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "workProfileOnly"

    .line 2179
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v2, "workId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2163
    const-class v0, Lcom/android/settings/Settings$StorageUseActivity;

    .line 2164
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classname"

    .line 2163
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2165
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->i:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "volumeUuid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "storageType"

    .line 2166
    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2167
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->i:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, "volumeName"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 2169
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 2170
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 2171
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->g:Landroidx/preference/PreferenceFragmentCompat;

    .line 2172
    invoke-static {v0}, Lcom/android/settingslib/core/instrumentation/d;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 2173
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v3

    .line 155
    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v5, 0x0

    .line 2187
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "pref_documents"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v9

    goto :goto_2

    :sswitch_1
    const-string v6, "pref_videos"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_2

    :sswitch_2
    const-string v6, "pref_photos"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_2

    :sswitch_3
    const-string v6, "pref_audios"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_2

    :sswitch_4
    const-string v6, "pref_apks"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v8

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v7

    :goto_2
    if-eqz v1, :cond_b

    if-eq v1, v3, :cond_a

    if-eq v1, v4, :cond_9

    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_7

    move v1, v7

    goto :goto_3

    .line 2205
    :cond_7
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/c;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/16 v1, 0x10

    goto :goto_3

    .line 2201
    :cond_8
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/c;->e(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move v1, v9

    goto :goto_3

    .line 2197
    :cond_9
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/c;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move v1, v8

    goto :goto_3

    .line 2193
    :cond_a
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/c;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move v1, v4

    goto :goto_3

    .line 2189
    :cond_b
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/storage/c;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move v1, v3

    :goto_3
    if-nez v5, :cond_c

    goto :goto_4

    .line 2212
    :cond_c
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2213
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/a;->g:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0, v5, v1}, Landroidx/preference/PreferenceFragmentCompat;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_d
    move v0, v3

    :goto_4
    if-eqz v0, :cond_e

    return v3

    .line 158
    :cond_e
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d7d418d -> :sswitch_4
        0x1d101cf9 -> :sswitch_3
        0x35f6c61d -> :sswitch_2
        0x403cb8f4 -> :sswitch_1
        0x4314df9c -> :sswitch_0
    .end sparse-switch
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
