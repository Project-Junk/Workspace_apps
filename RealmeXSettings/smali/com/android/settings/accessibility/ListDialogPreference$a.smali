.class public final Lcom/android/settings/accessibility/ListDialogPreference$a;
.super Landroid/widget/BaseAdapter;
.source "ListDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ListDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/ListDialogPreference;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$a;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$a;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-static {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$a;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-static {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference;)[I

    move-result-object v0

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$a;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-static {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->a(Lcom/android/settings/accessibility/ListDialogPreference;)[I

    move-result-object v0

    aget p1, v0, p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_1

    .line 289
    iget-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$a;->b:Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 290
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$a;->b:Landroid/view/LayoutInflater;

    .line 292
    :cond_0
    iget-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$a;->b:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/accessibility/ListDialogPreference$a;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-static {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->b(Lcom/android/settings/accessibility/ListDialogPreference;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 294
    :cond_1
    iget-object p3, p0, Lcom/android/settings/accessibility/ListDialogPreference$a;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {p3, p2, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->a(Landroid/view/View;I)V

    return-object p2
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
