.class public Lcom/android/settingslib/location/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/SettingsInjector$b;,
        Lcom/android/settingslib/location/SettingsInjector$a;,
        Lcom/android/settingslib/location/SettingsInjector$c;,
        Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settingslib/location/SettingsInjector$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/settingslib/location/SettingsInjector;->a:Landroid/content/Context;

    .line 107
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/location/SettingsInjector;->b:Ljava/util/Set;

    .line 108
    new-instance p1, Lcom/android/settingslib/location/SettingsInjector$c;

    iget-object v0, p0, Lcom/android/settingslib/location/SettingsInjector;->b:Ljava/util/Set;

    invoke-direct {p1, v0}, Lcom/android/settingslib/location/SettingsInjector$c;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/settingslib/location/SettingsInjector;->c:Landroid/os/Handler;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settingslib/location/a;
    .locals 7

    const-string v0, "SettingsInjector"

    .line 263
    sget-object v1, Landroid/R$styleable;->SettingInjectorService:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 p4, 0x1

    .line 267
    :try_start_0
    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    .line 269
    invoke-virtual {p3, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x2

    .line 271
    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 272
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "parsed title: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", iconId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", settingsActivity: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    new-instance v4, Lcom/android/settingslib/location/a$a;

    invoke-direct {v4}, Lcom/android/settingslib/location/a$a;-><init>()V

    .line 2144
    iput-object p0, v4, Lcom/android/settingslib/location/a$a;->a:Ljava/lang/String;

    .line 2149
    iput-object p1, v4, Lcom/android/settingslib/location/a$a;->b:Ljava/lang/String;

    .line 2154
    iput-object p4, v4, Lcom/android/settingslib/location/a$a;->c:Ljava/lang/String;

    .line 2159
    iput v2, v4, Lcom/android/settingslib/location/a$a;->d:I

    .line 2164
    iput-object p2, v4, Lcom/android/settingslib/location/a$a;->e:Landroid/os/UserHandle;

    .line 2169
    iput-object v3, v4, Lcom/android/settingslib/location/a$a;->f:Ljava/lang/String;

    .line 2174
    iput-object v5, v4, Lcom/android/settingslib/location/a$a;->g:Ljava/lang/String;

    .line 2179
    iget-object p0, v4, Lcom/android/settingslib/location/a$a;->a:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p0, v4, Lcom/android/settingslib/location/a$a;->b:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p0, v4, Lcom/android/settingslib/location/a$a;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v4, Lcom/android/settingslib/location/a$a;->f:Ljava/lang/String;

    .line 2180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 2188
    :cond_1
    new-instance p0, Lcom/android/settingslib/location/a;

    invoke-direct {p0, v4, v1}, Lcom/android/settingslib/location/a;-><init>(Lcom/android/settingslib/location/a$a;B)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x5

    .line 2181
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2182
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Illegal setting specification: package="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v4, Lcom/android/settingslib/location/a$a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", class="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/android/settingslib/location/a$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", title="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/android/settingslib/location/a$a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", settingsActivity="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v4, Lcom/android/settingslib/location/a$a;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 p0, 0x0

    .line 288
    :goto_1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
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
            "Lcom/android/settingslib/location/a;",
            ">;"
        }
    .end annotation

    const-string v0, "Unable to load service info "

    .line 122
    iget-object v1, p0, Lcom/android/settingslib/location/SettingsInjector;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 123
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.SettingInjectorService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/16 v4, 0x80

    .line 127
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    const-string v5, "SettingsInjector"

    .line 128
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    const-string v7, ": "

    if-eqz v6, :cond_0

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Found services for profile id "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 134
    :try_start_0
    invoke-virtual {p0, v8, p1, v1}, Lcom/android/settingslib/location/SettingsInjector;->a(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/a;

    move-result-object v9

    if-nez v9, :cond_1

    .line 136
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_1
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .line 143
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v9

    .line 141
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 147
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
.method protected a(Landroid/content/Context;Lcom/android/settingslib/location/a;)Landroidx/preference/Preference;
    .locals 0

    .line 200
    new-instance p2, Landroidx/preference/Preference;

    invoke-direct {p2, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method protected a(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 213
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 215
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x5

    const-string v4, "SettingsInjector"

    .line 216
    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ignoring attempt to inject setting from app not in system image: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    :try_start_0
    const-string v1, "android.location.SettingInjectorService"

    .line 225
    invoke-virtual {v0, p3, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 231
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 234
    :cond_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 238
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "injected-location-setting"

    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 245
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 244
    invoke-virtual {p3, v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p3

    .line 246
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2, p2, p3, p1}, Lcom/android/settingslib/location/SettingsInjector;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settingslib/location/a;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 252
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    return-object p1

    .line 240
    :cond_4
    :try_start_1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "Meta-data does not start with injected-location-setting tag"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_5
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "No android.location.SettingInjectorService meta-data for "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 248
    :catch_0
    :try_start_2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to load resources for package "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v3, :cond_6

    .line 252
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 254
    :cond_6
    throw p1
.end method

.method public final a(Landroid/content/Context;I)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/settingslib/location/SettingsInjector;->a:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 171
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 173
    iget-object v2, p0, Lcom/android/settingslib/location/SettingsInjector;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    if-eq p2, v3, :cond_1

    .line 175
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 176
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-direct {p0, v2}, Lcom/android/settingslib/location/SettingsInjector;->a(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 178
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/location/a;

    .line 179
    invoke-virtual {p0, p1, v5}, Lcom/android/settingslib/location/SettingsInjector;->a(Landroid/content/Context;Lcom/android/settingslib/location/a;)Landroidx/preference/Preference;

    move-result-object v6

    .line 1157
    iget-object v7, v5, Lcom/android/settingslib/location/a;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1158
    sget v7, Lcom/android/settingslib/e$h;->loading_injected_setting_summary:I

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1159
    new-instance v7, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;

    invoke-direct {v7, p0, v5}, Lcom/android/settingslib/location/SettingsInjector$ServiceSettingClickedListener;-><init>(Lcom/android/settingslib/location/SettingsInjector;Lcom/android/settingslib/location/a;)V

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v7, p0, Lcom/android/settingslib/location/SettingsInjector;->b:Ljava/util/Set;

    new-instance v8, Lcom/android/settingslib/location/SettingsInjector$b;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/settingslib/location/SettingsInjector$b;-><init>(Lcom/android/settingslib/location/SettingsInjector;Lcom/android/settingslib/location/a;Landroidx/preference/Preference;)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/location/SettingsInjector;->a()V

    return-object v1
.end method

.method public final a()V
    .locals 3

    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reloadingStatusMessages: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/location/SettingsInjector;->b:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/location/SettingsInjector;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
