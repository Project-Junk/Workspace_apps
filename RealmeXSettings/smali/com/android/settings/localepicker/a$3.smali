.class final Lcom/android/settings/localepicker/a$3;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/localepicker/a;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/a;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/localepicker/a$3;->a:Lcom/android/settings/localepicker/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/settings/localepicker/a$3;->a:Lcom/android/settings/localepicker/a;

    invoke-static {v0}, Lcom/android/settings/localepicker/a;->c(Lcom/android/settings/localepicker/a;)Landroid/os/LocaleList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/localepicker/a$3;->a:Lcom/android/settings/localepicker/a;

    invoke-static {v0}, Lcom/android/settings/localepicker/a;->c(Lcom/android/settings/localepicker/a;)Landroid/os/LocaleList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/a$3;->a:Lcom/android/settings/localepicker/a;

    invoke-static {v1}, Lcom/android/settings/localepicker/a;->d(Lcom/android/settings/localepicker/a;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/a$3;->a:Lcom/android/settings/localepicker/a;

    invoke-static {v0}, Lcom/android/settings/localepicker/a;->c(Lcom/android/settings/localepicker/a;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/localepicker/a$3;->a:Lcom/android/settings/localepicker/a;

    invoke-static {v0}, Lcom/android/settings/localepicker/a;->c(Lcom/android/settings/localepicker/a;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/localepicker/a;->a(Lcom/android/settings/localepicker/a;Landroid/os/LocaleList;)Landroid/os/LocaleList;

    .line 297
    new-instance v0, Lcom/android/settings/shortcut/a;

    iget-object v1, p0, Lcom/android/settings/localepicker/a$3;->a:Lcom/android/settings/localepicker/a;

    invoke-static {v1}, Lcom/android/settings/localepicker/a;->e(Lcom/android/settings/localepicker/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/shortcut/a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/shortcut/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 299
    iget-object v0, p0, Lcom/android/settings/localepicker/a$3;->a:Lcom/android/settings/localepicker/a;

    invoke-static {v0}, Lcom/android/settings/localepicker/a;->f(Lcom/android/settings/localepicker/a;)Landroid/os/LocaleList;

    .line 301
    iget-object v0, p0, Lcom/android/settings/localepicker/a$3;->a:Lcom/android/settings/localepicker/a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/localepicker/a;->a(Lcom/android/settings/localepicker/a;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;

    :cond_1
    :goto_0
    return-void
.end method
