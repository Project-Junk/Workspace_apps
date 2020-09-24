.class public final Lcom/coloros/settings/utils/az;
.super Ljava/lang/Object;
.source "SettingsNavigateUtils.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.credentials.INSTALL"

    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/az;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsNavigateUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "navigate_title_id"

    .line 105
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getContentDescriptonById: id = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingsNavigateUtils"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string v2, "navigate_parent_package"

    .line 109
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    .line 114
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/az;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/az;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "SettingsNavigateUtils"

    const-string p1, "intent or activity is null"

    .line 72
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroidx/preference/Preference;)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f121445

    .line 216
    instance-of v2, p0, Lcom/coloros/settings/widget/a;

    if-eqz v2, :cond_1

    .line 217
    check-cast p0, Lcom/coloros/settings/widget/a;

    invoke-interface {p0}, Lcom/coloros/settings/widget/a;->h()I

    move-result v1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 219
    invoke-static {v0}, Lcom/coloros/settings/utils/az;->b(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "navigate_parent_package"

    const-string v2, "com.android.settings"

    .line 220
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "navigate_title_id"

    .line 221
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    :cond_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 1

    if-eqz p0, :cond_2

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_2

    .line 232
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 233
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setFitsSystemWindows(Z)V

    return-void

    :cond_1
    const p1, 0x1020002

    .line 236
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    .line 238
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-static {p0, p2}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroidx/preference/Preference;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 184
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 186
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 187
    check-cast v2, Landroidx/preference/PreferenceGroup;

    invoke-static {p0, p1, v2}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    goto :goto_1

    .line 189
    :cond_2
    invoke-static {p0, v2}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroidx/preference/Preference;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/appcompat/app/ActionBar;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SettingsNavigateUtils"

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "navigate_title_text"

    .line 58
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-static {p0, p2}, Lcom/coloros/settings/utils/az;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "contentDescripton "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 66
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "intent or action bar is null"

    .line 55
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "navigate_title_id"

    const v1, 0x7f1209e7

    .line 82
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "navigate_parent_package"

    const-string v1, "com.android.settings"

    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public static b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    if-eqz p0, :cond_3

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f121445

    .line 158
    instance-of v1, p0, Lcom/coloros/settings/widget/a;

    if-eqz v1, :cond_1

    .line 159
    move-object v0, p0

    check-cast v0, Lcom/coloros/settings/widget/a;

    invoke-interface {v0}, Lcom/coloros/settings/widget/a;->h()I

    move-result v0

    .line 163
    :cond_1
    invoke-static {p1}, Lcom/coloros/settings/utils/az;->b(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v1, "navigate_title_text"

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_2
    const-string p0, "navigate_parent_package"

    const-string v1, "com.android.settings"

    .line 167
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "navigate_title_id"

    .line 168
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    :goto_0
    return-object p1
.end method

.method private static b(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 200
    sget-object v1, Lcom/coloros/settings/utils/az;->a:[Ljava/lang/String;

    array-length v1, v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 201
    sget-object v3, Lcom/coloros/settings/utils/az;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
