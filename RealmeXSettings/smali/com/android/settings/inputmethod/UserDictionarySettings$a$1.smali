.class final Lcom/android/settings/inputmethod/UserDictionarySettings$a$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/UserDictionarySettings$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/inputmethod/UserDictionarySettings$a;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/UserDictionarySettings$a;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionarySettings$a$1;->a:Lcom/android/settings/inputmethod/UserDictionarySettings$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 270
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p2, 0x8

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_0
    move-object p3, p1

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
