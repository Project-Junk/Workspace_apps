.class final Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$1;
.super Landroid/database/ContentObserver;
.source "LanguagePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;Landroid/os/Handler;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$1;->a:Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment$1;->a:Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;->a(Lcom/coloros/settings/feature/language/localepicker/LanguagePickerFragment;)V

    return-void
.end method
