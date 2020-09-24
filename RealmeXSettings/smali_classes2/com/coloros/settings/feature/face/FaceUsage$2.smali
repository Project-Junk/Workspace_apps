.class final Lcom/coloros/settings/feature/face/FaceUsage$2;
.super Ljava/lang/Object;
.source "FaceUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 176
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage$2;->b:Lcom/coloros/settings/feature/face/FaceUsage;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/FaceUsage$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 179
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/FaceUsage$2;->a:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage$2;->b:Lcom/coloros/settings/feature/face/FaceUsage;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/FaceUsage;->c(Lcom/coloros/settings/feature/face/FaceUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceUsage$2;->b:Lcom/coloros/settings/feature/face/FaceUsage;

    invoke-static {p1}, Lcom/coloros/settings/feature/face/FaceUsage;->d(Lcom/coloros/settings/feature/face/FaceUsage;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method
