.class public final Lcom/coloros/settings/feature/appmanager/search/a;
.super Ljava/lang/Object;
.source "AppSearchTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/appmanager/search/a$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field public a:Lcom/coloros/settings/feature/appmanager/search/a$a;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/appmanager/search/a;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/settings/feature/appmanager/search/a$a;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/search/a;->a:Lcom/coloros/settings/feature/appmanager/search/a$a;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 161
    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string v1, "-"

    .line 2178
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 2179
    :goto_0
    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    .line 2180
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 2183
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3041

    if-lt v4, v5, :cond_1

    const/16 v5, 0x3096

    if-gt v4, v5, :cond_1

    add-int/lit16 v4, v4, -0x3041

    add-int/lit16 v4, v4, 0x30a1

    int-to-char v4, v4

    .line 2186
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2188
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2191
    :cond_2
    sget-object p0, Lcom/coloros/settings/feature/appmanager/search/a;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_3
    const-string v0, "en"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 166
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 167
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 170
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 172
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 174
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a()V
    .locals 0

    return-void
.end method

.method private synthetic a(Ljava/util/ArrayList;)V
    .locals 1

    .line 3077
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/search/a;->a:Lcom/coloros/settings/feature/appmanager/search/a$a;

    if-eqz v0, :cond_0

    .line 3078
    invoke-interface {v0, p1}, Lcom/coloros/settings/feature/appmanager/search/a$a;->onSearchComplete(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$myC5biYqzn6Xb-WunyVJU5wPiKE(Lcom/coloros/settings/feature/appmanager/search/a;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/search/a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$vcLlOSikEqX2WxLVoUthcHd38a4(Lcom/coloros/settings/feature/appmanager/search/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/search/a;->a()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1100
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/search/a;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 1105
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/search/a;->c:Ljava/lang/String;

    .line 1144
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1145
    invoke-static {v1}, Lcom/coloros/settings/feature/appmanager/search/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1113
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/search/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 1114
    iget-object v4, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    .line 1115
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1119
    iget-object v4, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    .line 2154
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string v7, "zh"

    .line 2155
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_2

    .line 2137
    invoke-static {v4, v1}, Lcom/coloros/settings/feature/appmanager/search/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    :cond_2
    if-eqz v6, :cond_0

    .line 1121
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_4
    new-instance v1, Lcom/coloros/settings/feature/appmanager/search/-$$Lambda$a$myC5biYqzn6Xb-WunyVJU5wPiKE;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/appmanager/search/-$$Lambda$a$myC5biYqzn6Xb-WunyVJU5wPiKE;-><init>(Lcom/coloros/settings/feature/appmanager/search/a;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 91
    :catch_0
    new-instance v0, Lcom/coloros/settings/feature/appmanager/search/-$$Lambda$a$vcLlOSikEqX2WxLVoUthcHd38a4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/appmanager/search/-$$Lambda$a$vcLlOSikEqX2WxLVoUthcHd38a4;-><init>(Lcom/coloros/settings/feature/appmanager/search/a;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method
