.class final Lcom/android/settings/location/d$a;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 131
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 1052
    sget-object v0, Lcom/android/settings/location/d;->d:Ldalvik/system/DexClassLoader;

    const/4 v1, 0x1

    .line 132
    new-array v2, v1, [Ljava/lang/Class;

    .line 2052
    sget-object v3, Lcom/android/settings/location/d;->a:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 133
    new-instance v3, Lcom/android/settings/location/d$a$1;

    invoke-direct {v3, p0}, Lcom/android/settings/location/d$a$1;-><init>(Lcom/android/settings/location/d$a;)V

    .line 132
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 3052
    :try_start_0
    sget-object v2, Lcom/android/settings/location/d;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 150
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object v0, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4052
    sget-object v0, Lcom/android/settings/location/d;->c:Ljava/lang/reflect/Method;

    .line 151
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/location/d$a;->a:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 154
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/settings/location/d$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/location/d$a;)Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/settings/location/d$a;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/android/settings/location/d$a;Z)Z
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/android/settings/location/d$a;->a:Z

    return p1
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/location/d$a;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/location/d$a;->a:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p0, p1}, Lcom/android/settings/location/d;->a(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V

    return-void
.end method
