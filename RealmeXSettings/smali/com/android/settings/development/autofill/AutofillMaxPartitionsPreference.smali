.class public final Lcom/android/settings/development/autofill/AutofillMaxPartitionsPreference;
.super Lcom/android/settings/development/autofill/a;
.source "AutofillMaxPartitionsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "autofill_max_partitions_size"

    const/16 v1, 0xa

    .line 25
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/development/autofill/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onAttached()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/android/settings/development/autofill/a;->onAttached()V

    return-void
.end method

.method public final bridge synthetic onDetached()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/android/settings/development/autofill/a;->onDetached()V

    return-void
.end method
