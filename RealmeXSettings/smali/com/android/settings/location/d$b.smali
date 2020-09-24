.class final Lcom/android/settings/location/d$b;
.super Lcom/android/settings/widget/RestrictedAppPreference;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1052
    sget-object p2, Lcom/android/settings/location/d;->d:Ldalvik/system/DexClassLoader;

    const/4 v0, 0x1

    .line 169
    new-array v1, v0, [Ljava/lang/Class;

    .line 2052
    sget-object v2, Lcom/android/settings/location/d;->a:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 170
    new-instance v2, Lcom/android/settings/location/d$b$1;

    invoke-direct {v2, p0}, Lcom/android/settings/location/d$b$1;-><init>(Lcom/android/settings/location/d$b;)V

    .line 169
    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 3052
    :try_start_0
    sget-object v1, Lcom/android/settings/location/d;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 187
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4052
    sget-object p2, Lcom/android/settings/location/d;->c:Ljava/lang/reflect/Method;

    .line 188
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/location/d$b;->c:Z
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

    .line 191
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/d$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/location/d$b;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/android/settings/location/d$b;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/android/settings/location/d$b;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/android/settings/location/d$b;->c:Z

    return p1
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/widget/RestrictedAppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/location/d$b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/location/d$b;->c:Z

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
