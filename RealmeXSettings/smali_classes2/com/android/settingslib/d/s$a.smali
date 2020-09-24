.class final Lcom/android/settingslib/d/s$a;
.super Lcom/android/settingslib/d/s$d;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/d/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settingslib/d/s;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method constructor <init>(Lcom/android/settingslib/d/s;Lcom/android/settingslib/d/r;Ljava/lang/String;I)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/settingslib/d/s$a;->a:Lcom/android/settingslib/d/s;

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/d/s$d;-><init>(Lcom/android/settingslib/d/s;Lcom/android/settingslib/d/r;)V

    .line 331
    iput-object p3, p0, Lcom/android/settingslib/d/s$a;->d:Ljava/lang/String;

    .line 332
    iput p4, p0, Lcom/android/settingslib/d/s$a;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Lcom/android/settingslib/d/g;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/android/settingslib/d/s$a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "android.bluetooth.profile.extra.STATE"

    .line 338
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 339
    iget v0, p0, Lcom/android/settingslib/d/s$a;->e:I

    if-eq p1, v0, :cond_0

    .line 340
    iget-object p1, p0, Lcom/android/settingslib/d/s$a;->b:Lcom/android/settingslib/d/r;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/r;I)V

    .line 1485
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/d/g;->m()V

    return-void

    .line 344
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/d/s$d;->a(Landroid/content/Intent;Lcom/android/settingslib/d/g;)V

    return-void
.end method
