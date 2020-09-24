.class final Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;
.super Ljava/lang/Object;
.source "ColorRingtoneSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/third/ColorRingtoneSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const-string p1, "SetRingtoneActivity"

    .line 250
    iget-object v0, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {v0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "external"

    .line 253
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    .line 254
    invoke-static {v1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)J

    move-result-wide v1

    .line 253
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "duration"

    const-string v1, "_data"

    .line 255
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-virtual {v2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 260
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_4

    .line 269
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 261
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    const v3, 0x7f120e9b

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception v2

    .line 266
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 272
    :cond_4
    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onItemClick, which="

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->b(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I

    move-result p1

    const-string v0, "ringtone_sim2"

    const/4 v2, 0x1

    if-ne p2, p1, :cond_6

    .line 275
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1, v2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Z)Z

    .line 276
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->c(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->d(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "ringtone"

    .line 277
    :goto_3
    invoke-static {}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a()Ljava/lang/String;

    move-result-object p2

    .line 276
    invoke-static {p1, v0, p2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->e(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    goto/16 :goto_5

    .line 279
    :cond_6
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->f(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I

    move-result p1

    if-ne p2, p1, :cond_7

    .line 280
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1, v2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Z)Z

    .line 281
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->e(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    goto/16 :goto_5

    .line 283
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->g(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I

    move-result p1

    const-string v0, "notification_sim2"

    if-ne p2, p1, :cond_a

    .line 284
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 285
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->h(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    goto/16 :goto_5

    .line 287
    :cond_8
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1, v1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Z)Z

    .line 288
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->c(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->d(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_4

    :cond_9
    const-string v0, "oppo_sms_notification_sound"

    .line 289
    :goto_4
    invoke-static {}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a()Ljava/lang/String;

    move-result-object p2

    .line 288
    invoke-static {p1, v0, p2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->e(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    goto/16 :goto_5

    .line 292
    :cond_a
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->i(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I

    move-result p1

    if-ne p2, p1, :cond_c

    .line 293
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 294
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->h(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    goto/16 :goto_5

    .line 296
    :cond_b
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1, v1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Z)Z

    .line 297
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->e(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    goto :goto_5

    .line 300
    :cond_c
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->j(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I

    move-result p1

    if-ne p2, p1, :cond_d

    .line 301
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oppo.clock.setRing"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ring_uri"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :try_start_3
    iget-object p2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 306
    :catch_1
    iget-object p2, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 308
    :cond_d
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->k(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I

    move-result p1

    if-ne p2, p1, :cond_e

    .line 309
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->l(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    goto :goto_5

    .line 311
    :cond_e
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->m(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)I

    move-result p1

    if-ne p2, p1, :cond_10

    .line 312
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "calendar_sound"

    invoke-static {p1, v0, p2}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->a(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 314
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    const p2, 0x7f120467

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 317
    :cond_f
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    const p2, 0x7f120468

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 321
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/coloros/settings/third/ColorRingtoneSelectActivity$1;->a:Lcom/coloros/settings/third/ColorRingtoneSelectActivity;

    invoke-static {p1}, Lcom/coloros/settings/third/ColorRingtoneSelectActivity;->n(Lcom/coloros/settings/third/ColorRingtoneSelectActivity;)V

    return-void

    :goto_6
    if-eqz v0, :cond_11

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_11
    throw p1
.end method
