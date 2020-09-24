.class final Lcom/android/settings/display/TimeoutListPreference$1;
.super Ljava/lang/Object;
.source "TimeoutListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/TimeoutListPreference;->a(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/display/TimeoutListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/TimeoutListPreference;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/display/TimeoutListPreference$1;->a:Lcom/android/settings/display/TimeoutListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/android/settings/display/TimeoutListPreference$1;->a:Lcom/android/settings/display/TimeoutListPreference;

    .line 72
    invoke-virtual {p1}, Lcom/android/settings/display/TimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/TimeoutListPreference$1;->a:Lcom/android/settings/display/TimeoutListPreference;

    invoke-static {v0}, Lcom/android/settings/display/TimeoutListPreference;->a(Lcom/android/settings/display/TimeoutListPreference;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 71
    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void
.end method
