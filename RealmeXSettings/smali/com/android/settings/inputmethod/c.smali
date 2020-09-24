.class public final Lcom/android/settings/inputmethod/c;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/c$a;
    }
.end annotation


# static fields
.field private static final i:[Ljava/lang/String;


# instance fields
.field final a:I

.field b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field private final e:Landroid/widget/EditText;

.field private final f:Landroid/widget/EditText;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "word"

    .line 170
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/c;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0770

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/c;->e:Landroid/widget/EditText;

    const v0, 0x7f0a076c

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/inputmethod/c;->f:Landroid/widget/EditText;

    const-string/jumbo p1, "word"

    .line 65
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/settings/inputmethod/c;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const-string v0, "shortcut"

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/settings/inputmethod/c;->f:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v1, "mode"

    .line 76
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/inputmethod/c;->a:I

    .line 77
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/c;->c:Ljava/lang/String;

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/c;->d:Ljava/lang/String;

    const-string p1, "locale"

    .line 79
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/settings/inputmethod/c;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0770

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/inputmethod/c;->e:Landroid/widget/EditText;

    const v0, 0x7f0a076c

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/inputmethod/c;->f:Landroid/widget/EditText;

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/android/settings/inputmethod/c;->a:I

    .line 87
    iget-object p1, p2, Lcom/android/settings/inputmethod/c;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/inputmethod/c;->c:Ljava/lang/String;

    .line 88
    iget-object p1, p2, Lcom/android/settings/inputmethod/c;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/inputmethod/c;->d:Ljava/lang/String;

    .line 1265
    iget-object p1, p2, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/inputmethod/c$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 231
    new-instance v0, Lcom/android/settings/inputmethod/c$a;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/inputmethod/c$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 9

    .line 180
    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings/inputmethod/c;->i:[Ljava/lang/String;

    new-array v7, v1, [Ljava/lang/String;

    aput-object p1, v7, v2

    const/4 v8, 0x0

    const-string/jumbo v6, "word=? AND locale is null"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/settings/inputmethod/c;->i:[Ljava/lang/String;

    const/4 p2, 0x2

    new-array v7, p2, [Ljava/lang/String;

    aput-object p1, v7, v2

    iget-object p1, p0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    aput-object p1, v7, v1

    const/4 v8, 0x0

    const-string/jumbo v6, "word=? AND locale=?"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 193
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v2

    .line 191
    :cond_2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz p1, :cond_4

    .line 193
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_5
    throw p2
.end method


# virtual methods
.method final a(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 4

    if-eqz p2, :cond_0

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/settings/inputmethod/c;->a(Landroid/os/Bundle;)V

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 122
    iget v0, p0, Lcom/android/settings/inputmethod/c;->a:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/inputmethod/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/settings/inputmethod/c;->f:Landroid/widget/EditText;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 138
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p1, 0x1

    return p1

    .line 142
    :cond_4
    iput-object v0, p0, Lcom/android/settings/inputmethod/c;->g:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/android/settings/inputmethod/c;->h:Ljava/lang/String;

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v0, p1}, Lcom/android/settings/inputmethod/c;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 p1, 0x2

    return p1

    .line 155
    :cond_5
    invoke-static {v0, v2, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 158
    invoke-static {v0, v1, p2}, Lcom/android/settings/inputmethod/UserDictionarySettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 163
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xfa

    iget-object v3, p0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    .line 165
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/m;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 163
    :goto_2
    invoke-static {p1, p2, v0, v1, v2}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Locale;)V

    const/4 p1, 0x0

    return p1
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "word"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->c:Ljava/lang/String;

    const-string v1, "originalWord"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortcut"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "originalShortcut"

    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/c;->b:Ljava/lang/String;

    const-string v1, "locale"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
