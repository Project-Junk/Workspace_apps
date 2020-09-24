.class public Lcom/coloros/settings/feature/password/ResetGenericActivity;
.super Landroid/app/Activity;
.source "ResetGenericActivity.java"


# instance fields
.field private a:Lcom/coloros/settings/privacy/a/g;

.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/os/CountDownTimer;

.field private m:Landroid/app/Dialog;

.field private n:Lcolor/support/v7/app/AlertDialog;

.field private o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Landroid/content/BroadcastReceiver;

.field private t:Lcom/color/support/widget/help/KeyboardHelper;

.field private u:Lcom/color/support/widget/SecurityKeyboardView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->q:Z

    return-void
.end method

.method private a()V
    .locals 4

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_lock_screen"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 210
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "from_fingerprint_reset"

    .line 212
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->q:Z

    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v0, 0x0

    .line 399
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 400
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->e:Z

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7de

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 402
    invoke-virtual {p1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 403
    invoke-virtual {p1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 405
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 188
    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->q:Z

    .line 189
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a()V

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->b()V

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 248
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ResetGenericActivity;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 5295
    iput-object p2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->r:Ljava/lang/String;

    .line 5296
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5297
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f1210cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 5298
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 5299
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const v3, 0x7f1210d5

    invoke-virtual {p0, v3, v1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5300
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5301
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->j:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 5302
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5303
    new-instance v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$11;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity$11;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->l:Landroid/os/CountDownTimer;

    .line 5316
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity$12;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5324
    iput-boolean v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->p:Z

    .line 5325
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->l:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "ResetGenericActivity"

    .line 609
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkVerificationCode start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 611
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "requestId"

    .line 612
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "validateCode"

    .line 613
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "application/json; charset=utf-8"

    .line 614
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    .line 615
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 616
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 617
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 618
    new-instance p1, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;

    invoke-direct {p1, p0, v1}, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Lokhttp3/Request$Builder;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 693
    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 696
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    const-string v0, "ResetGenericActivity"

    .line 3371
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3372
    new-instance v1, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-direct {v1, p0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    .line 3373
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    const v3, 0x7f120d3d

    invoke-virtual {v1, v3}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setTitle(I)V

    .line 3374
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1, v2}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setCanceledOnTouchOutside(Z)V

    .line 3375
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setCancelable(Z)V

    .line 3377
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3378
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->show()V

    .line 412
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "requestVerificationCode start "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v7

    .line 414
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "requestId"

    .line 415
    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "type"

    const-string v4, "3"

    .line 416
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "language"

    .line 4361
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4363
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 4364
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 4365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, "zh-CN"

    .line 417
    :goto_0
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "area"

    const-string v4, "persist.sys.oppo.region"

    const-string v5, "CN"

    .line 5025
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 418
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "application/json; charset=utf-8"

    .line 419
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 420
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 421
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 422
    invoke-virtual {v7, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 423
    new-instance v1, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;

    move-object v5, v1

    move-object v6, p0

    move v8, p3

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Lokhttp3/Request$Builder;ZLjava/lang/String;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/String;

    .line 497
    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 500
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_3

    .line 502
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    .line 504
    :cond_3
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->e:Z

    return p0
.end method

.method private b()V
    .locals 3

    .line 219
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->e:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->c()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 222
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a:Lcom/coloros/settings/privacy/a/g;

    .line 223
    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v1

    iget-object v1, v1, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    new-instance v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$8;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity$8;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    .line 222
    invoke-static {p0, v0, v1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils;->showInputDialog(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/feature/fingerprint/utils/ResetDialogUtils$InputCallBack;)Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->n:Lcolor/support/v7/app/AlertDialog;

    :goto_0
    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->q:Z

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->q:Z

    .line 185
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V
    .locals 4

    .line 5275
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5277
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5279
    iget-boolean v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->p:Z

    if-eqz v1, :cond_1

    .line 5280
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5281
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a:Lcom/coloros/settings/privacy/a/g;

    const/4 v2, 0x4

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3, v0}, Lcom/coloros/settings/privacy/a/g;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 5283
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const v0, 0x7f1210d1

    .line 5285
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(I)V

    return-void

    .line 5288
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->r:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v6, p0

    .line 5510
    new-instance v7, Lcom/coloros/settings/feature/password/ResetGenericActivity$14;

    move-object/from16 v3, p2

    invoke-direct {v7, v6, v3}, Lcom/coloros/settings/feature/password/ResetGenericActivity$14;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;)V

    .line 5523
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "input_method"

    .line 5525
    invoke-virtual {v6, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const v1, 0x7f0d028c

    .line 5527
    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f0a023c

    .line 5528
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/color/support/widget/ColorEditText;

    const v0, 0x7f0a03dc

    .line 5529
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1210cc

    .line 5530
    invoke-virtual {v11, v1}, Lcom/color/support/widget/ColorEditText;->setHint(I)V

    const/16 v1, 0x8

    .line 5531
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0563

    .line 5532
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Button;

    const/4 v13, 0x0

    .line 5533
    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5534
    new-instance v14, Lcom/coloros/settings/feature/password/ResetGenericActivity$15;

    invoke-direct {v14, v6, v12}, Lcom/coloros/settings/feature/password/ResetGenericActivity$15;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Landroid/widget/Button;)V

    .line 5546
    new-instance v15, Lcom/coloros/settings/feature/password/ResetGenericActivity$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v12

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ResetGenericActivity$2;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Button;Landroid/os/CountDownTimer;)V

    invoke-virtual {v12, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5554
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5555
    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v1, 0x1

    .line 5556
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v13

    const v3, 0x7f1210d5

    invoke-virtual {v6, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5557
    new-instance v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$3;

    invoke-direct {v2, v6, v14}, Lcom/coloros/settings/feature/password/ResetGenericActivity$3;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Landroid/os/CountDownTimer;)V

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5563
    new-instance v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$4;

    invoke-direct {v2, v6, v8, v11, v7}, Lcom/coloros/settings/feature/password/ResetGenericActivity$4;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Landroid/view/inputmethod/InputMethodManager;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f1210d4

    .line 5573
    invoke-virtual {v0, v2, v9}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5574
    invoke-virtual {v0, v10}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5575
    invoke-virtual {v11, v1}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 5576
    invoke-virtual {v11}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 5577
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v5

    .line 5578
    invoke-virtual {v5}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 5579
    invoke-virtual {v14}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 5580
    invoke-virtual {v5}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 5581
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 5582
    new-instance v0, Lcom/coloros/settings/feature/password/ResetGenericActivity$5;

    invoke-direct {v0, v6, v7}, Lcom/coloros/settings/feature/password/ResetGenericActivity$5;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V

    invoke-virtual {v5, v0}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, -0x1

    .line 5591
    invoke-virtual {v5, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 5592
    new-instance v10, Lcom/coloros/settings/feature/password/ResetGenericActivity$6;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v8

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/password/ResetGenericActivity$6;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;Lcom/color/support/widget/ColorEditText;Landroid/view/inputmethod/InputMethodManager;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/widget/Button;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->j:Landroid/widget/Button;

    return-object p0
.end method

.method private c()V
    .locals 5

    const v0, 0x7f0d01af

    .line 239
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->setContentView(I)V

    const v0, 0x7f0a0242

    .line 240
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0331

    .line 241
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0563

    .line 242
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->j:Landroid/widget/Button;

    const v0, 0x7f0a03dc

    .line 243
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->k:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v3}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v3

    iget-object v3, v3, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1210cd

    invoke-virtual {p0, v3, v2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a011c

    .line 245
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0a018b

    .line 246
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->i:Landroid/widget/TextView;

    .line 247
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 248
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/coloros/settings/feature/password/-$$Lambda$ResetGenericActivity$_CjfukeI71xVu1roSIK9BTGESDc;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/-$$Lambda$ResetGenericActivity$_CjfukeI71xVu1roSIK9BTGESDc;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0361

    .line 249
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorKeyboardView;

    .line 250
    invoke-virtual {v0}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->u:Lcom/color/support/widget/SecurityKeyboardView;

    .line 251
    new-instance v0, Lcom/color/support/widget/help/KeyboardHelper;

    iget-object v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->u:Lcom/color/support/widget/SecurityKeyboardView;

    iget-object v3, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    invoke-direct {v0, p0, v2, v3}, Lcom/color/support/widget/help/KeyboardHelper;-><init>(Landroid/content/Context;Lcom/color/support/widget/SecurityKeyboardView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->t:Lcom/color/support/widget/help/KeyboardHelper;

    .line 252
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->t:Lcom/color/support/widget/help/KeyboardHelper;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/help/KeyboardHelper;->setKeyboardMode(I)V

    .line 253
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$9;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity$9;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 265
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->i:Landroid/widget/TextView;

    new-instance v2, Lcom/coloros/settings/feature/password/ResetGenericActivity$10;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity$10;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iput-boolean v1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->p:Z

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/password/ResetGenericActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/os/CountDownTimer;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->l:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method private d()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->d()V

    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/password/ResetGenericActivity;)Landroid/os/Handler;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->b:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic lambda$HBDJROAlbi8LTlltgcYncUAYoAE(Lcom/coloros/settings/feature/password/ResetGenericActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$NGGCyd2Ggnr0i5cnrxQLlIr3zt0(Lcom/coloros/settings/feature/password/ResetGenericActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$_CjfukeI71xVu1roSIK9BTGESDc(Lcom/coloros/settings/feature/password/ResetGenericActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$iGYTpnpLWI1LNBqE8NfyqDI2FSQ(Lcom/coloros/settings/feature/password/ResetGenericActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 705
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p3, p1, :cond_1

    .line 707
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->setResult(I)V

    .line 708
    iget-boolean p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->e:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->q:Z

    if-nez p1, :cond_0

    .line 709
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oppo.settings.fingerprint.FingerprintResetPassword"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.oppo.settings.permission.LOCK_PATTERN"

    .line 710
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 130
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "from_lock_screen"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->e:Z

    .line 131
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    .line 132
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 134
    iget-boolean v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->e:Z

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/high16 v2, 0x20000

    .line 136
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->c(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    .line 142
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;)Z

    .line 143
    new-instance p1, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {p1, p0, v1}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a:Lcom/coloros/settings/privacy/a/g;

    .line 1169
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    iget-object p1, p1, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    .line 1170
    new-instance v2, Lcom/android/settings/b/a;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3}, Lcom/android/settings/b/a;-><init>(Landroid/content/Context;Lcom/android/settings/b/a$a;I)V

    .line 2064
    iget-boolean v2, v2, Lcom/android/settings/b/a;->a:Z

    .line 1173
    invoke-static {p0}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "ResetGenericActivity"

    const-string v0, "showForgetPasswordDialog Device not Provisioned, finish !"

    .line 1174
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    const/4 p1, 0x2

    .line 1177
    new-array p1, p1, [Ljava/lang/CharSequence;

    const v2, 0x7f1212ec

    .line 1178
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const v1, 0x7f1212eb

    .line 1179
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 1180
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f130215

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1212ed

    .line 1181
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 1182
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/coloros/settings/feature/password/-$$Lambda$ResetGenericActivity$HBDJROAlbi8LTlltgcYncUAYoAE;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/password/-$$Lambda$ResetGenericActivity$HBDJROAlbi8LTlltgcYncUAYoAE;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    .line 1183
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/password/-$$Lambda$ResetGenericActivity$iGYTpnpLWI1LNBqE8NfyqDI2FSQ;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/password/-$$Lambda$ResetGenericActivity$iGYTpnpLWI1LNBqE8NfyqDI2FSQ;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    .line 1187
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/password/-$$Lambda$ResetGenericActivity$NGGCyd2Ggnr0i5cnrxQLlIr3zt0;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/password/-$$Lambda$ResetGenericActivity$NGGCyd2Ggnr0i5cnrxQLlIr3zt0;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    .line 1191
    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1197
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->m:Landroid/app/Dialog;

    .line 1198
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->m:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 1200
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->b()V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 1202
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->a()V

    goto :goto_1

    .line 1204
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->finish()V

    .line 146
    :goto_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->b:Landroid/os/Handler;

    .line 2163
    invoke-static {}, Lcom/coloros/settings/c;->a()Ljava/lang/String;

    move-result-object p1

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "auth/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->c:Ljava/lang/String;

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "auth/validate_email"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->d:Ljava/lang/String;

    .line 149
    new-instance p1, Lcom/coloros/settings/feature/password/ResetGenericActivity$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity$1;-><init>(Lcom/coloros/settings/feature/password/ResetGenericActivity;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->s:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->s:Landroid/content/BroadcastReceiver;

    const-string v1, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, v0, p1, v1, v4}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 351
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2389
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->d()V

    .line 2390
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->n:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2391
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->n:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 2393
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->m:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2394
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 339
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Z)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v0, "input_method"

    .line 343
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/password/ResetGenericActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 344
    iget-object v2, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 331
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/ResetGenericActivity;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 332
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method
