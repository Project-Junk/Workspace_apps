.class Lcom/coloros/settings/feature/othersettings/input/c;
.super Ljava/lang/Object;
.source "InputMethodSettingValuesWrapper.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static volatile b:Lcom/coloros/settings/feature/othersettings/input/c;


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

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/coloros/settings/utils/u$a;

.field private final f:Landroid/view/inputmethod/InputMethodManager;

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->c:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->g:Ljava/util/HashSet;

    .line 75
    new-instance v0, Lcom/coloros/settings/utils/u$a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    .line 76
    invoke-static {}, Lcom/coloros/settings/feature/othersettings/input/c;->d()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coloros/settings/utils/u$a;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->e:Lcom/coloros/settings/utils/u$a;

    const-string v0, "input_method"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->f:Landroid/view/inputmethod/InputMethodManager;

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/input/c;->a()V

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/input/c;
    .locals 2

    .line 54
    sget-object v0, Lcom/coloros/settings/feature/othersettings/input/c;->b:Lcom/coloros/settings/feature/othersettings/input/c;

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/coloros/settings/feature/othersettings/input/c;->a:Ljava/lang/String;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/coloros/settings/feature/othersettings/input/c;->b:Lcom/coloros/settings/feature/othersettings/input/c;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/coloros/settings/feature/othersettings/input/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/input/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/settings/feature/othersettings/input/c;->b:Lcom/coloros/settings/feature/othersettings/input/c;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/settings/feature/othersettings/input/c;->b:Lcom/coloros/settings/feature/othersettings/input/c;

    return-object p0
.end method

.method private a(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->e:Lcom/coloros/settings/utils/u$a;

    invoke-virtual {v1}, Lcom/coloros/settings/utils/u$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 209
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

    :catchall_0
    move-exception p1

    .line 207
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 2

    .line 217
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 221
    sget-object v1, Lcom/coloros/settings/utils/u;->a:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/coloros/settings/utils/u;->a(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 226
    :cond_1
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/c;->g:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 227
    sget-object p2, Lcom/coloros/settings/feature/othersettings/input/c;->a:Ljava/lang/String;

    const-string v0, "ascii capable subtype enabled imi not found. Fall back to English Keyboard subtype."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "keyboard"

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/utils/u;->a(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 232
    :cond_2
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/input/c;->g:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private c(Landroid/content/Context;)I
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->e:Lcom/coloros/settings/utils/u$a;

    invoke-virtual {v1}, Lcom/coloros/settings/utils/u$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    .line 193
    invoke-direct {p0, v2, p1}, Lcom/coloros/settings/feature/othersettings/input/c;->b(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 198
    sget-object p1, Lcom/coloros/settings/feature/othersettings/input/c;->a:Ljava/lang/String;

    const-string v0, "No \"enabledValidSystemNonAuxAsciiCapableIme\"s found."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    .line 191
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static d()I
    .locals 3

    .line 66
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/coloros/settings/feature/othersettings/input/c;->a:Ljava/lang/String;

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->g:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 98
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->e:Lcom/coloros/settings/utils/u$a;

    invoke-virtual {v1}, Lcom/coloros/settings/utils/u$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 100
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 102
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    const-string v6, "keyboard"

    .line 103
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/input/c;->g:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 85
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->f:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 88
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/c;->e()V

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final a(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 8

    .line 141
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/input/c;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    .line 143
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oppo_default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string v2, "/"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 151
    aget-object v2, v2, v4

    .line 154
    :cond_1
    sget-object v5, Lcom/coloros/settings/feature/othersettings/input/c;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "imiName ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " dfltImeConfig="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dfltImePkgName="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v5, p0, Lcom/coloros/settings/feature/othersettings/input/c;->e:Lcom/coloros/settings/utils/u$a;

    invoke-virtual {v5}, Lcom/coloros/settings/utils/u$a;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    if-eqz v0, :cond_2

    .line 158
    monitor-exit v1

    return v6

    .line 160
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v6

    .line 167
    :cond_3
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/othersettings/input/c;->c(Landroid/content/Context;)I

    move-result v1

    if-le v1, v6, :cond_4

    return v4

    :cond_4
    if-ne v1, v6, :cond_5

    if-nez v0, :cond_5

    return v4

    .line 176
    :cond_5
    invoke-static {p1}, Lcom/coloros/settings/utils/u;->a(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v4

    .line 183
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/input/c;->b(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 160
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/c;->e:Lcom/coloros/settings/utils/u$a;

    const-string v3, "default_input_method"

    const/4 v4, 0x0

    .line 1250
    invoke-virtual {v2, v3, v4}, Lcom/coloros/settings/utils/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_0

    .line 123
    sget-object p1, Lcom/coloros/settings/feature/othersettings/input/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid selected imi: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/c;->e:Lcom/coloros/settings/utils/u$a;

    const-string v3, "default_input_method"

    .line 2250
    invoke-virtual {v2, v3, v4}, Lcom/coloros/settings/utils/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 124
    monitor-exit v0

    return-object p1

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/c;->f:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 127
    invoke-static {p1, v1, v2}, Lcom/coloros/settings/utils/u;->a(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->c:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final c()Ljava/lang/String;
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/c;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/input/c;->e:Lcom/coloros/settings/utils/u$a;

    const-string v3, "default_input_method"

    const/4 v4, 0x0

    .line 3250
    invoke-virtual {v2, v3, v4}, Lcom/coloros/settings/utils/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_0

    .line 134
    sget-object v1, Lcom/coloros/settings/feature/othersettings/input/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid selected imi: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/input/c;->e:Lcom/coloros/settings/utils/u$a;

    const-string v5, "default_input_method"

    .line 4250
    invoke-virtual {v3, v5, v4}, Lcom/coloros/settings/utils/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    .line 135
    monitor-exit v0

    return-object v1

    .line 137
    :cond_0
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
