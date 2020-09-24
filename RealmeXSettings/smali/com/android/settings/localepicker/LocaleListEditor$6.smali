.class final Lcom/android/settings/localepicker/LocaleListEditor$6;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/LocaleListEditor;
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

    .line 282
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 285
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/localepicker/LocalePickerWithRegionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->a:Lcom/android/settings/localepicker/LocaleListEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
