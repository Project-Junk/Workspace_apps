.class final Lcom/coloros/settings/feature/security/location/c$a;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/location/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/security/location/c;

.field private b:Lcom/coloros/settings/feature/security/location/a;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/security/location/c;Lcom/coloros/settings/feature/security/location/a;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/coloros/settings/feature/security/location/c$a;->a:Lcom/coloros/settings/feature/security/location/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p2, p0, Lcom/coloros/settings/feature/security/location/c$a;->b:Lcom/coloros/settings/feature/security/location/a;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 305
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 306
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/c$a;->b:Lcom/coloros/settings/feature/security/location/a;

    iget-object v0, v0, Lcom/coloros/settings/feature/security/location/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/c$a;->b:Lcom/coloros/settings/feature/security/location/a;

    iget-object v1, v1, Lcom/coloros/settings/feature/security/location/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    iget-object v0, p0, Lcom/coloros/settings/feature/security/location/c$a;->a:Lcom/coloros/settings/feature/security/location/c;

    .line 1068
    iget-object v0, v0, Lcom/coloros/settings/feature/security/location/c;->a:Landroid/content/Context;

    .line 318
    iget-object v1, p0, Lcom/coloros/settings/feature/security/location/c$a;->b:Lcom/coloros/settings/feature/security/location/a;

    iget-object v1, v1, Lcom/coloros/settings/feature/security/location/a;->e:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p1, 0x1

    return p1
.end method
