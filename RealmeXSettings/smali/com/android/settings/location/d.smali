.class public final Lcom/android/settings/location/d;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/d$b;,
        Lcom/android/settings/location/d$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Class;

.field static b:Ljava/lang/reflect/Method;

.field static c:Ljava/lang/reflect/Method;

.field static d:Ldalvik/system/DexClassLoader;

.field private static e:Ljava/lang/Class;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/String;


# direct methods
.method static synthetic a(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V
    .locals 2

    .line 1121
    invoke-virtual {p0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1123
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 p1, 0x66

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1124
    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 1063
    sget-object v0, Lcom/android/settings/location/d;->d:Ldalvik/system/DexClassLoader;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 1065
    :try_start_0
    sget-object v0, Lcom/android/settings/location/d;->e:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/location/d;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 1066
    :cond_0
    new-instance v0, Ldalvik/system/DexClassLoader;

    const-string v5, "/system/framework/izat.xt.srv.jar"

    .line 1067
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1069
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v5, v6, v4, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/android/settings/location/d;->d:Ldalvik/system/DexClassLoader;

    const-string v0, "com.qti.izat.XTProxy"

    .line 1070
    sget-object v5, Lcom/android/settings/location/d;->d:Ldalvik/system/DexClassLoader;

    invoke-static {v0, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/d;->e:Ljava/lang/Class;

    const-string v0, "com.qti.izat.XTProxy$Notifier"

    .line 1073
    sget-object v5, Lcom/android/settings/location/d;->d:Ldalvik/system/DexClassLoader;

    invoke-static {v0, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/d;->a:Ljava/lang/Class;

    .line 1076
    sget-object v0, Lcom/android/settings/location/d;->e:Ljava/lang/Class;

    const-string v5, "IZAT_XT_PACKAGE"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/settings/location/d;->g:Ljava/lang/String;

    .line 1077
    sget-object v0, Lcom/android/settings/location/d;->e:Ljava/lang/Class;

    const-string v5, "getXTProxy"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    sget-object v7, Lcom/android/settings/location/d;->a:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/d;->b:Ljava/lang/reflect/Method;

    .line 1080
    sget-object v0, Lcom/android/settings/location/d;->e:Ljava/lang/Class;

    const-string v5, "getUserConsent"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/d;->c:Ljava/lang/reflect/Method;

    .line 1081
    sget-object v0, Lcom/android/settings/location/d;->e:Ljava/lang/Class;

    const-string v5, "showIzat"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/d;->f:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catch_6
    move-exception v0

    .line 1088
    :goto_0
    sput-object v4, Lcom/android/settings/location/d;->e:Ljava/lang/Class;

    .line 1089
    sput-object v4, Lcom/android/settings/location/d;->a:Ljava/lang/Class;

    .line 1090
    sput-object v4, Lcom/android/settings/location/d;->g:Ljava/lang/String;

    .line 1091
    sput-object v4, Lcom/android/settings/location/d;->b:Ljava/lang/reflect/Method;

    .line 1092
    sput-object v4, Lcom/android/settings/location/d;->c:Ljava/lang/reflect/Method;

    .line 1093
    sput-object v4, Lcom/android/settings/location/d;->f:Ljava/lang/reflect/Method;

    .line 1094
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    :cond_1
    :goto_1
    :try_start_1
    sget-object v0, Lcom/android/settings/location/d;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Lcom/android/settings/location/d;->f:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_7

    move v3, p0

    goto :goto_3

    :catch_7
    move-exception p0

    goto :goto_2

    :catch_8
    move-exception p0

    goto :goto_2

    :catch_9
    move-exception p0

    goto :goto_2

    :catch_a
    move-exception p0

    .line 108
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return v3
.end method

.method static a(Lcom/android/settingslib/location/a;)Z
    .locals 1

    .line 114
    sget-object v0, Lcom/android/settings/location/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/location/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
