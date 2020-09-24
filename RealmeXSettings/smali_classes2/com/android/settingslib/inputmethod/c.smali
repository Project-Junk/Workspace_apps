.class public Lcom/android/settingslib/inputmethod/c;
.super Ljava/lang/Object;
.source "InputMethodSettingValuesWrapper.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static volatile b:Lcom/android/settingslib/inputmethod/c;


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/ContentResolver;

.field private final e:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/c;->c:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/c;->d:Landroid/content/ContentResolver;

    .line 61
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/c;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 62
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/c;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/c;
    .locals 2

    .line 48
    sget-object v0, Lcom/android/settingslib/inputmethod/c;->b:Lcom/android/settingslib/inputmethod/c;

    if-nez v0, :cond_1

    .line 49
    sget-object v0, Lcom/android/settingslib/inputmethod/c;->a:Ljava/lang/String;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/android/settingslib/inputmethod/c;->b:Lcom/android/settingslib/inputmethod/c;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/android/settingslib/inputmethod/c;

    invoke-direct {v1, p0}, Lcom/android/settingslib/inputmethod/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settingslib/inputmethod/c;->b:Lcom/android/settingslib/inputmethod/c;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settingslib/inputmethod/c;->b:Lcom/android/settingslib/inputmethod/c;

    return-object p0
.end method

.method private c()I
    .locals 3

    .line 91
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 93
    invoke-static {v2}, Lcom/android/settingslib/inputmethod/a;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 98
    sget-object v0, Lcom/android/settingslib/inputmethod/c;->a:Ljava/lang/String;

    const-string v2, "No \"enabledValidNonAuxAsciiCapableIme\"s found."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method private d()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/c;->d:Landroid/content/ContentResolver;

    .line 122
    invoke-static {v0}, Lcom/android/settingslib/inputmethod/a;->a(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 125
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/c;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/c;->e:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 3

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/c;->b(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    .line 76
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/c;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    if-eqz v0, :cond_0

    return v2

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/c;->c()I

    move-result v1

    if-gt v1, v2, :cond_2

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_2

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/a;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/inputmethod/c;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final b(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 3

    .line 104
    invoke-direct {p0}, Lcom/android/settingslib/inputmethod/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 106
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
