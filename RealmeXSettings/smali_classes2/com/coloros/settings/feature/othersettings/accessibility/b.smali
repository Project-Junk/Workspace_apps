.class public Lcom/coloros/settings/feature/othersettings/accessibility/b;
.super Ljava/lang/Object;
.source "AccessibilityListParser.java"


# static fields
.field private static volatile a:Lcom/coloros/settings/feature/othersettings/accessibility/b;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/accessibility/b$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/b$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/b;Landroid/content/Context;)V

    const-string p1, "AccessibilityListParser"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/b;->b:Ljava/util/List;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/b;->b(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/accessibility/b;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/accessibility/b;
    .locals 2

    .line 46
    sget-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/b;->a:Lcom/coloros/settings/feature/othersettings/accessibility/b;

    if-nez v0, :cond_1

    .line 47
    const-class v0, Lcom/coloros/settings/feature/othersettings/accessibility/b;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/coloros/settings/feature/othersettings/accessibility/b;->a:Lcom/coloros/settings/feature/othersettings/accessibility/b;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/coloros/settings/feature/othersettings/accessibility/b;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/settings/feature/othersettings/accessibility/b;->a:Lcom/coloros/settings/feature/othersettings/accessibility/b;

    .line 51
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 53
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/settings/feature/othersettings/accessibility/b;->a:Lcom/coloros/settings/feature/othersettings/accessibility/b;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 82
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    .line 1091
    invoke-static {p0}, Lcom/coloros/settings/utils/au;->a(Landroid/content/Context;)Lcom/coloros/settings/utils/au;

    move-result-object p0

    const-string v0, "app_settings_accessibility_filter_keywords"

    .line 1092
    invoke-virtual {p0, v0}, Lcom/coloros/settings/utils/au;->a(Ljava/lang/String;)Lcom/coloros/settings/utils/au;

    move-result-object p0

    const-string v0, "string"

    const v1, 0x7fffffff

    .line 2087
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/utils/au;->a(Ljava/lang/String;I)Lcom/coloros/settings/utils/au;

    move-result-object p0

    const v1, 0x783aad7d

    .line 2107
    iput v1, p0, Lcom/coloros/settings/utils/au;->a:I

    const-string v1, "app_settings_accessibility_filter_keywords.xml"

    .line 2112
    iput-object v1, p0, Lcom/coloros/settings/utils/au;->b:Ljava/lang/String;

    .line 1096
    invoke-virtual {p0}, Lcom/coloros/settings/utils/au;->a()Lcom/coloros/settings/utils/au$a;

    move-result-object p0

    .line 1097
    invoke-virtual {p0}, Lcom/coloros/settings/utils/au$a;->a()Lcom/coloros/settings/utils/au$a;

    move-result-object p0

    .line 1098
    invoke-virtual {p0, v0}, Lcom/coloros/settings/utils/au$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/b;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    .line 63
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/accessibility/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 69
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v0

    :cond_5
    :goto_2
    return-object p1
.end method
