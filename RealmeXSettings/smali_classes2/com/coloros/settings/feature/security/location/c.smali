.class final Lcom/coloros/settings/feature/security/location/c;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/location/c$b;,
        Lcom/coloros/settings/feature/security/location/c$c;,
        Lcom/coloros/settings/feature/security/location/c$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/settings/feature/security/location/c$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c;->a:Landroid/content/Context;

    .line 104
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c;->b:Ljava/util/Set;

    .line 105
    new-instance p1, Lcom/coloros/settings/feature/security/location/c$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/security/location/c$c;-><init>(Lcom/coloros/settings/feature/security/location/c;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Lcom/coloros/settings/feature/security/location/a;)Landroidx/preference/Preference;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Lcom/coloros/settings/feature/security/location/a;",
            ")",
            "Landroidx/preference/Preference;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 273
    iget-object v1, p3, Lcom/coloros/settings/feature/security/location/a;->a:Ljava/lang/String;

    iget v2, p3, Lcom/coloros/settings/feature/security/location/a;->d:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 274
    iget-object v2, p3, Lcom/coloros/settings/feature/security/location/a;->e:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 275
    iget-object v2, p3, Lcom/coloros/settings/feature/security/location/a;->c:Ljava/lang/String;

    iget-object v4, p3, Lcom/coloros/settings/feature/security/location/a;->e:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 276
    iget-object v2, p3, Lcom/coloros/settings/feature/security/location/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v3

    .line 281
    :cond_0
    new-instance v2, Lcom/coloros/settings/widget/preference/DimmableIconPreference;

    invoke-direct {v2, p1, v0}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p3, Lcom/coloros/settings/feature/security/location/a;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/coloros/settings/feature/security/location/c;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/coloros/settings/utils/af;->b(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 285
    new-instance p1, Lcom/coloros/settings/feature/security/location/c$a;

    invoke-direct {p1, p0, p3}, Lcom/coloros/settings/feature/security/location/c$a;-><init>(Lcom/coloros/settings/feature/security/location/c;Lcom/coloros/settings/feature/security/location/a;)V

    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const p1, 0x7f0d00b0

    .line 286
    invoke-virtual {v2, p1}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->setLayoutResource(I)V

    .line 287
    invoke-virtual {v2}, Lcom/coloros/settings/widget/preference/DimmableIconPreference;->c()V

    .line 288
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private static a(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/coloros/settings/feature/security/location/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 160
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 162
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x5

    const-string v4, "SettingsInjector"

    .line 163
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ignoring attempt to inject setting from app not in system image: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    :try_start_0
    const-string v1, "android.location.SettingInjectorService"

    .line 172
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 178
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p0

    .line 181
    :cond_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 185
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "injected-location-setting"

    .line 186
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 191
    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p2

    .line 193
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, p0}, Lcom/coloros/settings/feature/security/location/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/coloros/settings/feature/security/location/a;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 199
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    return-object p0

    .line 187
    :cond_4
    :try_start_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Meta-data does not start with injected-location-setting tag"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_5
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "No android.location.SettingInjectorService meta-data for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 195
    :catch_0
    :try_start_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to load resources for package "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v3, :cond_6

    .line 199
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 201
    :cond_6
    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/coloros/settings/feature/security/location/a;
    .locals 8

    const-string v0, "SettingsInjector"

    .line 210
    sget-object v1, Landroid/R$styleable;->SettingInjectorService:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 p4, 0x1

    .line 214
    :try_start_0
    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 p4, 0x0

    .line 216
    invoke-virtual {p3, p4, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 p4, 0x2

    .line 218
    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 p4, 0x3

    .line 219
    invoke-static {v0, p4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 220
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "parsed title: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconId: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", settingsActivity: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1084
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 1092
    :cond_1
    new-instance p4, Lcom/coloros/settings/feature/security/location/a;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/coloros/settings/feature/security/location/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x5

    .line 1085
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1086
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Illegal setting specification: package="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", class="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", title="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", settingsActivity="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 p4, 0x0

    .line 226
    :goto_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-object p4

    :catchall_0
    move-exception p0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    throw p0
.end method

.method private a(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/security/location/a;",
            ">;"
        }
    .end annotation

    const-string v0, "Unable to load service info "

    .line 119
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 120
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.SettingInjectorService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/16 v4, 0x80

    .line 124
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    const-string v5, "SettingsInjector"

    .line 125
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    const-string v7, ": "

    if-eqz v6, :cond_0

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Found services for profile id "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 131
    :try_start_0
    invoke-static {v8, p1, v1}, Lcom/coloros/settings/feature/security/location/c;->a(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/coloros/settings/feature/security/location/a;

    move-result-object v9

    if-nez v9, :cond_1

    .line 133
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .line 140
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v9

    .line 138
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Loaded settings for profile id "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v6
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/c;->a:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 238
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 242
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    if-eq p2, v6, :cond_0

    .line 243
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne p2, v6, :cond_1

    .line 244
    :cond_0
    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/security/location/c;->a(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 245
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/settings/feature/security/location/a;

    .line 246
    invoke-direct {p0, p1, v1, v6}, Lcom/coloros/settings/feature/security/location/c;->a(Landroid/content/Context;Ljava/util/List;Lcom/coloros/settings/feature/security/location/a;)Landroidx/preference/Preference;

    move-result-object v7

    .line 247
    iget-object v8, p0, Lcom/coloros/settings/feature/security/location/c;->b:Ljava/util/Set;

    new-instance v9, Lcom/coloros/settings/feature/security/location/c$b;

    invoke-direct {v9, p0, v6, v7, v3}, Lcom/coloros/settings/feature/security/location/c$b;-><init>(Lcom/coloros/settings/feature/security/location/c;Lcom/coloros/settings/feature/security/location/a;Landroidx/preference/Preference;B)V

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/location/c;->a()V

    return-object v1
.end method

.method public final a()V
    .locals 3

    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reloadingStatusMessages: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/security/location/c;->b:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/c;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
