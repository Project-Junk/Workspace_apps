.class final Lcom/android/settings/development/RtlLayoutPreferenceController$1;
.super Ljava/lang/Object;
.source "RtlLayoutPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/RtlLayoutPreferenceController;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/settings/development/RtlLayoutPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/RtlLayoutPreferenceController;Z)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/development/RtlLayoutPreferenceController$1;->b:Lcom/android/settings/development/RtlLayoutPreferenceController;

    iput-boolean p2, p0, Lcom/android/settings/development/RtlLayoutPreferenceController$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/settings/development/RtlLayoutPreferenceController$1;->b:Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/RtlLayoutPreferenceController;->a(Lcom/android/settings/development/RtlLayoutPreferenceController;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/RtlLayoutPreferenceController$1;->b:Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/RtlLayoutPreferenceController;->a(Lcom/android/settings/development/RtlLayoutPreferenceController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/development/RtlLayoutPreferenceController$1;->b:Lcom/android/settings/development/RtlLayoutPreferenceController;

    iget-boolean v1, p0, Lcom/android/settings/development/RtlLayoutPreferenceController$1;->a:Z

    invoke-static {v0, v1}, Lcom/android/settings/development/RtlLayoutPreferenceController;->a(Lcom/android/settings/development/RtlLayoutPreferenceController;Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/development/RtlLayoutPreferenceController$1;->b:Lcom/android/settings/development/RtlLayoutPreferenceController;

    .line 1098
    iget-object v0, v0, Lcom/android/settings/development/RtlLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    :cond_0
    return-void
.end method
