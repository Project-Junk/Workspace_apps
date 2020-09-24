.class final Lcom/coloros/settings/feature/face/FaceUsage$3;
.super Ljava/lang/Object;
.source "FaceUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/face/FaceUsage;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/feature/face/FaceUsage;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/FaceUsage;Z)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage$3;->b:Lcom/coloros/settings/feature/face/FaceUsage;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/FaceUsage$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 189
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/FaceUsage$3;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage$3;->b:Lcom/coloros/settings/feature/face/FaceUsage;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/FaceUsage;->c(Lcom/coloros/settings/feature/face/FaceUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage$3;->b:Lcom/coloros/settings/feature/face/FaceUsage;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/FaceUsage;->d(Lcom/coloros/settings/feature/face/FaceUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method
