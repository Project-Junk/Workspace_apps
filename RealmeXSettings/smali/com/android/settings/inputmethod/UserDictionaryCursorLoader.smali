.class public Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;
.super Landroidx/loader/content/CursorLoader;
.source "UserDictionaryCursorLoader.java"


# static fields
.field static final a:[Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    const-string/jumbo v1, "word"

    const-string v2, "shortcut"

    .line 35
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 11

    .line 71
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->a:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v7, "locale is null"

    const-string v9, "UPPER(word)"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->a:[Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/String;

    aput-object v1, v9, v2

    const-string v8, "locale=?"

    const-string v10, "UPPER(word)"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 85
    :goto_1
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 87
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 88
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 89
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 90
    new-array v9, v7, [Ljava/lang/Object;

    aput-object v6, v9, v2

    aput-object v8, v9, v3

    invoke-static {v9}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v9

    .line 91
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 94
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x3

    .line 95
    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v2

    aput-object v6, v9, v3

    aput-object v8, v9, v7

    invoke-virtual {v0, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 86
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
