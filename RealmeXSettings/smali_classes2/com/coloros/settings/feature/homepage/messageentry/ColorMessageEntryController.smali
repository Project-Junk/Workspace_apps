.class public Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;
.super Lcom/android/settingslib/core/a;
.source "ColorMessageEntryController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;,
        Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/background/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private d:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

.field private e:Landroidx/preference/PreferenceScreen;

.field private f:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->c:Landroid/os/Handler;

    .line 62
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/ColorTopLevelSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)Landroid/app/Activity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "title_res_name"

    .line 187
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTitleByTargetContext, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorMessageEntryController"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 191
    :try_start_0
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "string"

    invoke-virtual {v1, v0, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, ""

    .line 199
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "title"

    .line 200
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->b:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->e:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->b:Ljava/util/List;

    const-string v1, "ColorMessageEntryController"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->d:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a:Landroid/app/Activity;

    invoke-direct {v0, v2, v3}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->d:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->e:Landroidx/preference/PreferenceScreen;

    const-string v2, "color_message_preference"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "updateMessageEntry addPreference "

    .line 238
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->e:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->d:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->d:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a(Ljava/util/List;)V

    goto :goto_1

    .line 229
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->d:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    if-eqz v0, :cond_5

    const-string v0, "updateMessageEntry removePreference "

    .line 230
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->e:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->d:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/settings/background/a/a;",
            ">;"
        }
    .end annotation

    const-string v0, "ColorMessageEntryController"

    const-string v1, "getMessageEntries start"

    .line 158
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/coloros/settings/background/OutwardContentProvider;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 161
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 163
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 165
    :cond_0
    new-instance v4, Lcom/coloros/settings/background/a/a;

    invoke-direct {v4}, Lcom/coloros/settings/background/a/a;-><init>()V

    const-string v5, "package_name"

    .line 166
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "message_id"

    .line 167
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/coloros/settings/background/a/a;->b:Ljava/lang/String;

    .line 168
    iput-object v5, v4, Lcom/coloros/settings/background/a/a;->l:Ljava/lang/String;

    const-string v6, "entrance_path"

    .line 1181
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1182
    invoke-static {p0, v6}, Lcom/coloros/settings/feature/homepage/messageentry/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 169
    iput-object v6, v4, Lcom/coloros/settings/background/a/a;->d:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-static {p0, v2, v5}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/coloros/settings/background/a/a;->f:Ljava/lang/String;

    .line 1213
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "target_action"

    .line 1214
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "target_package_name"

    .line 1215
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1216
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v7

    :goto_0
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iput-object v6, v4, Lcom/coloros/settings/background/a/a;->e:Landroid/content/Intent;

    .line 172
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v3, p0

    .line 160
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v3, :cond_2

    .line 175
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw p0

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "getMessageEntries end, count = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private synthetic b()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a()V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)V
    .locals 4

    .line 2154
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->c:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$ColorMessageEntryController$OVSSosPwDZGXEvo0kFKafXewCtY;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$ColorMessageEntryController$OVSSosPwDZGXEvo0kFKafXewCtY;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$OVSSosPwDZGXEvo0kFKafXewCtY(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->b()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 207
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 208
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->e:Landroidx/preference/PreferenceScreen;

    .line 209
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "color_message_preference"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 98
    new-instance p1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->f:Landroid/database/ContentObserver;

    if-nez p1, :cond_0

    .line 101
    new-instance p1, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->c:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController$a;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->f:Landroid/database/ContentObserver;

    .line 104
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/coloros/settings/background/OutwardContentProvider;->a:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->f:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorMessageEntryController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->f:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 81
    :cond_0
    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->a:Landroid/app/Activity;

    .line 82
    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/ColorMessageEntryController;->f:Landroid/database/ContentObserver;

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method
