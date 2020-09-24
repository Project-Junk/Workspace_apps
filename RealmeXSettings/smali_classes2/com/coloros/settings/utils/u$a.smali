.class public final Lcom/coloros/settings/utils/u$a;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final b:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final c:Landroid/content/res/Resources;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:[I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/coloros/settings/utils/u$a;->a:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 124
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/coloros/settings/utils/u$a;->b:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/utils/u$a;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/coloros/settings/utils/u$a;->g:Z

    const-string v1, ""

    .line 137
    iput-object v1, p0, Lcom/coloros/settings/utils/u$a;->h:Ljava/lang/String;

    .line 141
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/coloros/settings/utils/u$a;->j:[I

    .line 173
    iput-object p1, p0, Lcom/coloros/settings/utils/u$a;->c:Landroid/content/res/Resources;

    .line 174
    iput-object p2, p0, Lcom/coloros/settings/utils/u$a;->d:Landroid/content/ContentResolver;

    .line 175
    iput-object p3, p0, Lcom/coloros/settings/utils/u$a;->e:Ljava/util/HashMap;

    .line 1191
    iget p1, p0, Lcom/coloros/settings/utils/u$a;->i:I

    if-ne p1, p4, :cond_0

    iget-boolean p1, p0, Lcom/coloros/settings/utils/u$a;->g:Z

    if-eqz p1, :cond_1

    .line 1192
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/utils/u$a;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1193
    iput-object v1, p0, Lcom/coloros/settings/utils/u$a;->h:Ljava/lang/String;

    .line 1196
    :cond_1
    iput p4, p0, Lcom/coloros/settings/utils/u$a;->i:I

    .line 1197
    iput-boolean v0, p0, Lcom/coloros/settings/utils/u$a;->g:Z

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 230
    iget-object v2, p0, Lcom/coloros/settings/utils/u$a;->e:Ljava/util/HashMap;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            "Landroid/text/TextUtils$SimpleStringSplitter;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 153
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 154
    invoke-virtual {p1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-virtual {p2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 157
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 160
    :goto_1
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {p2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lcom/coloros/settings/utils/u$a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/utils/u$a;->a:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object v2, p0, Lcom/coloros/settings/utils/u$a;->b:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/u$a;->a(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    const-string v0, "enabled_input_methods"

    const-string v1, ""

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/utils/u$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/utils/u$a;->h:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/coloros/settings/utils/u$a;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 205
    iget-boolean v0, p0, Lcom/coloros/settings/utils/u$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/utils/u$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/utils/u$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/utils/u$a;->d:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/coloros/settings/utils/u$a;->i:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lcom/coloros/settings/utils/u$a;->b()Ljava/util/List;

    move-result-object v0

    .line 215
    invoke-direct {p0, v0}, Lcom/coloros/settings/utils/u$a;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
