.class final Lcom/android/settings/CryptKeeper$7;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$7;->b:Lcom/android/settings/CryptKeeper;

    iput-object p2, p0, Lcom/android/settings/CryptKeeper$7;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$7;->a:Landroid/view/inputmethod/InputMethodManager;

    .line 783
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    const/4 v1, 0x0

    .line 782
    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerFromSystem(ZI)V

    return-void
.end method
