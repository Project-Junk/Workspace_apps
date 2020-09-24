.class public final Lcom/android/settingslib/i/a;
.super Ljava/lang/Object;
.source "DreamBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/i/a$b;,
        Lcom/android/settingslib/i/a$a;
    }
.end annotation


# static fields
.field private static g:Lcom/android/settingslib/i/a;


# instance fields
.field public final a:Landroid/service/dreams/IDreamManager;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/android/settingslib/i/a$b;

.field private final d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/i/a;->b:Landroid/content/Context;

    const-string v0, "dreams"

    .line 104
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/i/a;->a:Landroid/service/dreams/IDreamManager;

    .line 105
    new-instance v0, Lcom/android/settingslib/i/a$b;

    invoke-direct {p0}, Lcom/android/settingslib/i/a;->f()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/i/a$b;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/settingslib/i/a;->c:Lcom/android/settingslib/i/a$b;

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/i/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_dreamsEnabledByDefault"

    .line 107
    invoke-static {p1, v1}, Lcom/android/settingslib/m/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/i/a;->d:Z

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/i/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_dreamsActivatedOnSleepByDefault"

    .line 109
    invoke-static {p1, v1}, Lcom/android/settingslib/m/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/i/a;->e:Z

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/i/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_dreamsActivatedOnDockByDefault"

    .line 111
    invoke-static {p1, v1}, Lcom/android/settingslib/m/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/i/a;->f:Z

    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 7

    const-string v0, "DreamBackend"

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 298
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_d

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 306
    :cond_0
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v3, "android.service.dream"

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    :try_start_1
    const-string p0, "No android.service.dream meta-data"

    .line 308
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 328
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    return-object v1

    .line 311
    :cond_2
    :try_start_2
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    .line 312
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 314
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 317
    :cond_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dream"

    .line 318
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string p0, "Meta-data does not start with dream tag"

    .line 319
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    .line 328
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    return-object v1

    :cond_6
    :try_start_3
    const-string v4, "Dream"

    .line 322
    invoke-static {v4}, Lcom/android/settingslib/m/a/a;->a(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const-string v4, "Dream_settingsActivity"

    .line 323
    invoke-static {p0, v4}, Lcom/android/settingslib/m/a/a;->a(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 324
    :try_start_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_7

    .line 328
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    move-object v3, p0

    move-object p0, v1

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    :goto_0
    move-object v6, v3

    move-object v3, p0

    move-object p0, v6

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_1

    :catch_5
    move-exception p0

    :goto_1
    move-object v3, v1

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 329
    :cond_8
    throw p0

    :catch_6
    move-exception p0

    goto :goto_3

    :catch_7
    move-exception p0

    goto :goto_3

    :catch_8
    move-exception p0

    :goto_3
    move-object v2, v1

    move-object v3, v2

    :goto_4
    if-eqz v2, :cond_9

    .line 328
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    :goto_5
    if-eqz p0, :cond_a

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_a
    if-eqz v3, :cond_b

    const/16 p0, 0x2f

    .line 334
    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_b

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    if-nez v3, :cond_c

    return-object v1

    .line 337
    :cond_c
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_d
    :goto_6
    return-object v1
.end method

.method private static a(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 2

    if-eqz p0, :cond_1

    .line 292
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settingslib/i/a;
    .locals 1

    .line 95
    sget-object v0, Lcom/android/settingslib/i/a;->g:Lcom/android/settingslib/i/a;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/settingslib/i/a;

    invoke-direct {v0, p0}, Lcom/android/settingslib/i/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/i/a;->g:Lcom/android/settingslib/i/a;

    .line 98
    :cond_0
    sget-object p0, Lcom/android/settingslib/i/a;->g:Lcom/android/settingslib/i/a;

    return-object p0
.end method

.method private b(Ljava/lang/String;Z)Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/settingslib/i/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f()Landroid/content/ComponentName;
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/i/a;->a:Landroid/service/dreams/IDreamManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 141
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->getDefaultDreamComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "DreamBackend"

    const-string v3, "Failed to get default dream"

    .line 143
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private g()Z
    .locals 2

    .line 210
    iget-boolean v0, p0, Lcom/android/settingslib/i/a;->f:Z

    const-string v1, "screensaver_activate_on_dock"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/i/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 2

    .line 220
    iget-boolean v0, p0, Lcom/android/settingslib/i/a;->e:Z

    const-string v1, "screensaver_activate_on_sleep"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/i/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/i/a$a;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/android/settingslib/i/a;->e()Landroid/content/ComponentName;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/settingslib/i/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 118
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.dreams.DreamService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 123
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    .line 125
    new-instance v5, Lcom/android/settingslib/i/a$a;

    invoke-direct {v5}, Lcom/android/settingslib/i/a$a;-><init>()V

    .line 126
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/i/a$a;->a:Ljava/lang/CharSequence;

    .line 127
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/i/a$a;->b:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-static {v4}, Lcom/android/settingslib/i/a;->a(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/i/a$a;->d:Landroid/content/ComponentName;

    .line 129
    iget-object v6, v5, Lcom/android/settingslib/i/a$a;->d:Landroid/content/ComponentName;

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/settingslib/i/a$a;->c:Z

    .line 130
    invoke-static {v1, v4}, Lcom/android/settingslib/i/a;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v5, Lcom/android/settingslib/i/a$a;->e:Landroid/content/ComponentName;

    .line 131
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/i/a;->c:Lcom/android/settingslib/i/a$b;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/settingslib/i/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 215
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v0, "screensaver_activate_on_dock"

    .line 216
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/i/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 4

    .line 149
    invoke-virtual {p0}, Lcom/android/settingslib/i/a;->e()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/settingslib/i/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 153
    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public final b(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 225
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v0, "screensaver_activate_on_sleep"

    .line 226
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/i/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()I
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/android/settingslib/i/a;->d()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/i/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settingslib/i/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/i/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/i/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method

.method public final d()Z
    .locals 2

    .line 201
    iget-boolean v0, p0, Lcom/android/settingslib/i/a;->d:Z

    const-string v1, "screensaver_enabled"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/i/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/content/ComponentName;
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/android/settingslib/i/a;->a:Landroid/service/dreams/IDreamManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 253
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 254
    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v0, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "DreamBackend"

    const-string v3, "Failed to get active dream"

    .line 256
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
