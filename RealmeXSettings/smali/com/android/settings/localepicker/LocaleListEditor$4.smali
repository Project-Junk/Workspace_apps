.class final Lcom/android/settings/localepicker/LocaleListEditor$4;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 234
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->b(Lcom/android/settings/localepicker/LocaleListEditor;)Z

    .line 235
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->a(Lcom/android/settings/localepicker/LocaleListEditor;)Z

    .line 236
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->c(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/a;

    move-result-object p1

    .line 1234
    iget-object p2, p1, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    .line 1236
    iget-object v0, p1, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p1, Lcom/android/settings/localepicker/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 1240
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/localepicker/a;->notifyDataSetChanged()V

    .line 1241
    invoke-virtual {p1}, Lcom/android/settings/localepicker/a;->b()V

    .line 237
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$4;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {p1}, Lcom/android/settings/localepicker/LocaleListEditor;->d(Lcom/android/settings/localepicker/LocaleListEditor;)V

    return-void
.end method
