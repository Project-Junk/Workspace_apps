.class final Lcom/android/settings/inputmethod/UserDictionarySettings$a;
.super Landroid/widget/SimpleCursorAdapter;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/AlphabetIndexer;

.field private final b:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6

    const v2, 0x7f0d038d

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 286
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 265
    new-instance p3, Lcom/android/settings/inputmethod/UserDictionarySettings$a$1;

    invoke-direct {p3, p0}, Lcom/android/settings/inputmethod/UserDictionarySettings$a$1;-><init>(Lcom/android/settings/inputmethod/UserDictionarySettings$a;)V

    iput-object p3, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$a;->b:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    if-eqz p2, :cond_0

    const-string p3, "com.android.internal.R.string.fast_scroll_alphabet"

    .line 290
    invoke-static {p3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 289
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "word"

    .line 291
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 292
    new-instance p4, Landroid/widget/AlphabetIndexer;

    invoke-direct {p4, p2, p3, p1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object p4, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$a;->a:Landroid/widget/AlphabetIndexer;

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$a;->b:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionarySettings$a;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    return-void
.end method


# virtual methods
.method public final getPositionForSection(I)I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$a;->a:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p1

    return p1
.end method

.method public final getSectionForPosition(I)I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$a;->a:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p1

    return p1
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$a;->a:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
