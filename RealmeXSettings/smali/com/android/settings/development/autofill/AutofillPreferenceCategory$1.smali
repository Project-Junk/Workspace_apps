.class final Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;
.super Landroid/database/ContentObserver;
.source "AutofillPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/autofill/AutofillPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;Landroid/os/Handler;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->a:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->a:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->notifyDependencyChange(Z)V

    return-void
.end method

.method public static synthetic lambda$zF31AIapDmyy55mrxUYiBQEQdmk(Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->a()V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->a:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;

    invoke-static {p1}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->a(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/development/autofill/-$$Lambda$AutofillPreferenceCategory$1$zF31AIapDmyy55mrxUYiBQEQdmk;

    invoke-direct {p2, p0}, Lcom/android/settings/development/autofill/-$$Lambda$AutofillPreferenceCategory$1$zF31AIapDmyy55mrxUYiBQEQdmk;-><init>(Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
