.class public Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;
.super Lcom/android/settings/privacy/PrivacyDashboardFragment;
.source "ColorPrivacyDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final c:Landroid/net/Uri;


# instance fields
.field private d:Z

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/privacy/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/String;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/coloros/settings/privacy/e;

    invoke-direct {v0}, Lcom/coloros/settings/privacy/e;-><init>()V

    sput-object v0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    const-string v0, "content://com.coloros.provider.PermissionProvider"

    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->d:Z

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->f:Ljava/util/HashMap;

    const-string v1, "privacy_manage_perms"

    const-string v2, "key_float_window"

    .line 70
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->g:[Ljava/lang/String;

    .line 71
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->h:Z

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V
    .locals 6

    const-string v0, "privacy_manage_perms"

    .line 4269
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string p1, "permission"

    .line 4272
    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->a(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 4274
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10004c

    new-array v2, v2, [Ljava/lang/Object;

    .line 4275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 4274
    invoke-virtual {v3, v4, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 4277
    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4280
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10004f

    new-array v2, v2, [Ljava/lang/Object;

    .line 4281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 4280
    invoke-virtual {v3, v4, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const-string p1, "key_float_window"

    .line 4284
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorJumpPreference;

    if-eqz p1, :cond_3

    .line 4286
    iget-object p0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    const-string v0, "float_window"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/privacy/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/privacy/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;Landroid/content/Context;)V
    .locals 11

    const/4 v0, 0x0

    .line 6163
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/coloros/settings/utils/a/a;->o:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6167
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 6168
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "type"

    .line 6169
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    .line 6170
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 6171
    iget-object v3, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 6178
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ColorPrivacyDashboardFragment"

    .line 6175
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6291
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->f:Ljava/util/HashMap;

    const-string v1, "float_window"

    if-eqz v0, :cond_2

    .line 6293
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "permission"

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/a/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6292
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6294
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->f:Ljava/util/HashMap;

    .line 6295
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/a/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6294
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6184
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    new-instance v2, Lcom/coloros/settings/feature/privacy/a/a;

    invoke-direct {v2}, Lcom/coloros/settings/feature/privacy/a/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6186
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    new-instance v1, Lcom/coloros/settings/feature/privacy/a/e;

    invoke-direct {v1}, Lcom/coloros/settings/feature/privacy/a/e;-><init>()V

    const-string v2, "secure_pay"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6187
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    new-instance v1, Lcom/coloros/settings/feature/privacy/a/d;

    invoke-direct {v1}, Lcom/coloros/settings/feature/privacy/a/d;-><init>()V

    const-string v2, "pseudo_base_station"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6188
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    new-instance v1, Lcom/coloros/settings/feature/privacy/a/c;

    invoke-direct {v1}, Lcom/coloros/settings/feature/privacy/a/c;-><init>()V

    const-string v2, "strange_number"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6191
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6192
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/privacy/a;

    .line 6194
    invoke-virtual {v1}, Lcom/coloros/settings/feature/privacy/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->a(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 6196
    invoke-virtual {v1, p1, v2}, Lcom/coloros/settings/feature/privacy/a;->a(Landroid/content/Context;I)V

    goto :goto_3

    .line 6200
    :cond_4
    new-instance p1, Lcom/coloros/settings/feature/privacy/a/b;

    invoke-direct {p1}, Lcom/coloros/settings/feature/privacy/a/b;-><init>()V

    .line 6201
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/privacy/a/b;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "harass_call"

    if-eqz v0, :cond_8

    .line 6202
    invoke-direct {p0, v1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->a(Ljava/lang/String;)I

    move-result v0

    const-string v2, "harass_sms"

    .line 6203
    invoke-direct {p0, v2}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->a(Ljava/lang/String;)I

    move-result v2

    .line 6205
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gtz v0, :cond_5

    if-lez v2, :cond_7

    .line 6207
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121383

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f100049

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v0, :cond_6

    .line 6209
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100048

    new-array v9, v6, [Ljava/lang/Object;

    .line 6210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    .line 6209
    invoke-virtual {v7, v8, v0, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v2, :cond_7

    .line 6212
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f121382

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6213
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v6, v6, [Ljava/lang/Object;

    .line 6214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 6213
    invoke-virtual {v0, v4, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 6217
    :cond_6
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v6, v6, [Ljava/lang/Object;

    .line 6218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    .line 6217
    invoke-virtual {v0, v4, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6222
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/privacy/a/b;->a(Ljava/lang/String;)V

    .line 6224
    :cond_8
    iget-object p0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_5
    if-eqz v0, :cond_9

    .line 6178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6180
    :cond_9
    throw p0
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)I
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->c()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V
    .locals 2

    const-string v0, "key_find_my_phone"

    .line 4313
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f1213f7

    .line 4316
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f1213f6

    .line 4318
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string p0, ""

    .line 4320
    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private c()I
    .locals 7

    const-string v0, "result"

    .line 432
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "ColorPrivacyDashboardFragment"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 438
    sget-object v4, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->c:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    :try_start_0
    const-string v4, "getOptPermissionNum"

    const-string v5, "all"

    .line 444
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 445
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 446
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v0

    :cond_2
    if-eqz v1, :cond_3

    .line 452
    :goto_0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 449
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error occur, e = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v3

    :goto_2
    if-eqz v1, :cond_4

    .line 452
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 454
    :cond_4
    throw v0

    :cond_5
    :goto_3
    const-string v0, "getPermissionOptimizableCount context is null"

    .line 433
    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method static synthetic c(Landroid/content/Context;)I
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->d(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V
    .locals 2

    .line 6469
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ColorPrivacyDashboardFragment"

    const-string v0, "refreshPermissionSummary context is null"

    .line 6470
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6473
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$9;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$9;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V
    .locals 2

    .line 4369
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ColorPrivacyDashboardFragment"

    const-string p1, "refreshAppEncryptPreference context is null"

    .line 4370
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4373
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$5;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)I
    .locals 3

    const-string v0, "ColorPrivacyDashboardFragment"

    .line 302
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "findmyphone_switch"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 308
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isFindPhoneOpen() isOpen = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private synthetic d()V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "location"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Landroidx/preference/Preference;->performClick()V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->h:Z

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V
    .locals 10

    const-string v0, "key_float_window"

    .line 6496
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    .line 6497
    iget-object v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    const-string v2, "float_window"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/privacy/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/privacy/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "key_payment_protection"

    .line 6499
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    .line 6500
    iget-object v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    const-string v2, "secure_pay"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/privacy/a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/privacy/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "key_harassment_interception"

    .line 6502
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorJumpPreference;

    const-string v1, "key_pseudo_base_station"

    .line 6503
    invoke-virtual {p0, v1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/color/support/preference/ColorJumpPreference;

    const-string v2, "key_intelligent_identification_contact"

    .line 6504
    invoke-virtual {p0, v2}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/color/support/preference/ColorJumpPreference;

    .line 6505
    iget-object v3, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    const-string v4, "harass_call"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/feature/privacy/a;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/coloros/settings/feature/privacy/a;->a(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 6506
    iget-object v5, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    const-string v6, "pseudo_base_station"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/settings/feature/privacy/a;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/coloros/settings/feature/privacy/a;->a(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 6507
    iget-object v7, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    const-string v8, "strange_number"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coloros/settings/feature/privacy/a;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/coloros/settings/feature/privacy/a;->a(Landroid/content/Context;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v3, :cond_0

    .line 6509
    iget-object v3, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/feature/privacy/a;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/privacy/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez v5, :cond_1

    .line 6512
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/privacy/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    if-nez v7, :cond_2

    .line 6515
    iget-object v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/privacy/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x0

    .line 7229
    :try_start_0
    new-instance v1, Landroid/app/OppoActivityManager;

    invoke-direct {v1}, Landroid/app/OppoActivityManager;-><init>()V

    invoke-virtual {v1}, Landroid/app/OppoActivityManager;->isPermissionInterceptEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->d:Z

    .line 7230
    iget-object v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->g:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 7231
    iget-boolean v5, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->d:Z

    if-eqz v5, :cond_3

    .line 7232
    invoke-virtual {p0, v4}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/color/support/preference/ColorJumpPreference;

    check-cast v4, Lcom/color/support/preference/ColorJumpPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 7234
    :cond_3
    invoke-virtual {p0, v4}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/color/support/preference/ColorJumpPreference;

    check-cast v4, Lcom/color/support/preference/ColorJumpPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1205ca

    .line 7235
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 7234
    invoke-virtual {v4, v5}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7239
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorPrivacyDashboardFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6518
    :cond_4
    iget-boolean v1, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->d:Z

    if-eqz v1, :cond_5

    .line 7244
    new-instance v1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$1;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/String;

    .line 7265
    invoke-virtual {v1, p0, v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V
    .locals 2

    .line 5326
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ColorPrivacyDashboardFragment"

    const-string p1, "updateFindMyPhonePreference context is null"

    .line 5327
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5330
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$2;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V
    .locals 2

    .line 5405
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ColorPrivacyDashboardFragment"

    const-string p1, "refreshPrivacyInfoAppPreference context is null"

    .line 5406
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5409
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$7;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$fsMzBxPPEY1brnKUx5HFCOz59JU(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->d()V

    return-void
.end method


# virtual methods
.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15005d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 107
    invoke-super {p0}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->onResume()V

    .line 1459
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$8;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$8;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1465
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2345
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$3;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2352
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2394
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$6;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$6;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2401
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_0

    .line 3356
    new-instance v0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$4;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V

    .line 3365
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment$4;->start()V

    .line 4139
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->h:Z

    if-eqz v0, :cond_1

    .line 4143
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4145
    new-instance v1, Lcom/coloros/settings/privacy/-$$Lambda$ColorPrivacyDashboardFragment$fsMzBxPPEY1brnKUx5HFCOz59JU;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/-$$Lambda$ColorPrivacyDashboardFragment$fsMzBxPPEY1brnKUx5HFCOz59JU;-><init>(Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1, p2}, Lcom/android/settings/privacy/PrivacyDashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-static {}, Lcom/coloros/settings/utils/h;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "category_sos"

    .line 82
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 87
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->C()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "cell_broadcast_emergency"

    .line 88
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string p1, "category_harass_intercept"

    .line 94
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    goto :goto_1

    .line 1125
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1128
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1129
    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_5

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    return-void
.end method
