.class final Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$2;
.super Lcom/b/a/a/a/a;
.source "OSIESettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$2;->a:Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;

    invoke-direct {p0}, Lcom/b/a/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/a/a/a$a;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    iget p1, p1, Lcom/b/a/a/a/a$a;->a:I

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OSIEFragment"

    .line 138
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
