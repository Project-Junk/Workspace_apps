.class public abstract Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BiometricEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$b;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$c;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$d;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$e;,
        Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field protected c:Landroid/os/CancellationSignal;

.field protected d:[B

.field protected e:I

.field private f:Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/biometrics/BiometricEnrollSidecar$e;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->b:I

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->h:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->k:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->j:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a:I

    .line 147
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->c:Landroid/os/CancellationSignal;

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->g:Z

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 163
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 164
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a:I

    .line 166
    :cond_0
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->b:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 167
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->i:Z

    .line 168
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;

    if-eqz v0, :cond_2

    .line 169
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a:I

    invoke-interface {v0, v1, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;->a(II)V

    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$d;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a:I

    invoke-direct {v1, p0, v2, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$d;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(ILjava/lang/CharSequence;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$c;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;)V
    .locals 2

    .line 193
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;

    .line 194
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar$e;

    .line 197
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$e;->a(Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public final b(ILjava/lang/CharSequence;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->f:Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$a;->a(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->j:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/biometrics/BiometricEnrollSidecar$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar$b;-><init>(Lcom/android/settings/biometrics/BiometricEnrollSidecar;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    .line 189
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->g:Z

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->c:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 155
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->g:Z

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a:I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->d:[B

    .line 125
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->e:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setRetainInstance(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStart()V

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->g:Z

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->a()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStop()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->b()Z

    :cond_0
    return-void
.end method
