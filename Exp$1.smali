.class Lcom/example/myapplication/Exp$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/Exp;->show(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field fromCache:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/example/myapplication/Exp$1;->fromCache:Z

    return-void
.end method

.method static synthetic lambda$onPostExecute$0(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_1a

    :catch_f
    move-exception v0

    const-string v1, "Unable to open link"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1a
    return-void
.end method

.method static synthetic lambda$onPostExecute$1(Landroid/app/Activity;)V
    .registers 1

    return-void
.end method

.method static synthetic lambda$onPostExecute$2(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/view/View;)V
    .registers 16

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3f59999a  # 0.85f

    const/high16 v6, 0x3f800000  # 1.0f

    const v7, 0x3f59999a  # 0.85f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000  # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000  # 0.5f

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v6, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;)V

    const-wide/16 v7, 0x1c2

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/example/myapplication/Exp$1;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .registers 13

    const-string v0, "cached_update_json"

    const-string v1, "update_cache"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/net/URL;

    const-string v5, "https://raw.githubusercontent.com/used4/Tempkey/refs/heads/main/GitUpdate.json"

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    const/16 v5, 0x708

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    if-eqz v7, :cond_39

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_39
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "{"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4d

    return-object v3

    :cond_4d
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_63} :catch_64

    return-object v9

    :catch_64
    move-exception v4

    :try_start_65
    iget-object v5, p0, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/example/myapplication/Exp$1;->fromCache:Z

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_79} :catch_7b

    return-object v1

    :cond_7a
    goto :goto_7c

    :catch_7b
    move-exception v0

    :goto_7c
    nop

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/example/myapplication/Exp$1;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 41

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_42e

    const-string v0, "show_dialog"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_42e

    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/example/myapplication/Exp;->-$$Nest$smisValidCredit(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget-object v0, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_42d

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_28

    goto/16 :goto_42d

    :cond_28
    invoke-static {}, Lcom/example/myapplication/Exp;->-$$Nest$sfgetcurrentDialog()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/example/myapplication/Exp;->-$$Nest$sfgetcurrentDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/example/myapplication/Exp;->-$$Nest$sfgetcurrentDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3f
    :try_start_3f
    const-string v0, "title"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const-string v0, "subtitle"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const-string v0, "whatsnew"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    const-string v0, "btn_update"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    const-string v0, "btn_exit"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    const-string v0, "link"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    iget-object v0, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/example/myapplication/Exp;->-$$Nest$smisDarkMode(Landroid/content/Context;)Z

    move-result v0

    move v10, v0

    if-eqz v10, :cond_74

    const/4 v0, -0x1

    goto :goto_76

    :cond_74
    const/high16 v0, -0x1000000

    :goto_76
    move v12, v0

    if-eqz v10, :cond_7d

    const v0, -0x333334

    goto :goto_7f

    :cond_7d
    const/high16 v0, -0x10000

    :goto_7f
    move v13, v0

    if-eqz v10, :cond_89

    const-string v0, "#222222"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_8a

    :cond_89
    const/4 v0, -0x1

    :goto_8a
    move v14, v0

    if-eqz v10, :cond_90

    const-string v0, "#333333"

    goto :goto_92

    :cond_90
    const-string v0, "#F9F9F9"

    :goto_92
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_96} :catch_42a

    move v15, v0

    const-string v16, "#DDDDDD"

    if-eqz v10, :cond_a0

    :try_start_9b
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_a6

    :cond_a0
    const-string v0, "#444444"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_a6
    move/from16 v17, v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v11, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v2, 0x41a00000  # 20.0f

    invoke-static {v0, v2}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v21, v9

    const/high16 v9, 0x41a00000  # 20.0f

    invoke-static {v2, v9}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v2

    iget-object v9, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v22, v11

    const/high16 v11, 0x41a00000  # 20.0f

    invoke-static {v9, v11}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v9

    iget-object v11, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v23, v8

    const/high16 v8, 0x41a00000  # 20.0f

    invoke-static {v11, v8}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v3, v0, v2, v9, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v8, v0

    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v9, 0x41a00000  # 20.0f

    invoke-static {v0, v9}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v11, 0x41a00000  # 20.0f

    invoke-static {v0, v11}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v11}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v2

    iget-object v11, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v24, v8

    const/high16 v8, 0x41a00000  # 20.0f

    invoke-static {v11, v8}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v11

    iget-object v8, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move/from16 v25, v14

    const/high16 v14, 0x41a00000  # 20.0f

    invoke-static {v8, v14}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v9, v0, v2, v11, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v11, 0x42700000  # 60.0f

    invoke-static {v8, v11}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v8

    iget-object v14, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-static {v14, v11}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v0, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v8, v0

    const/4 v11, 0x1

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_154} :catch_42a

    :try_start_154
    iget-object v0, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v11, "hiiq3.ttf"

    invoke-virtual {v0, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_167} :catch_168

    goto :goto_169

    :catch_168
    move-exception v0

    :goto_169
    nop

    :try_start_16a
    new-instance v0, Landroid/widget/TextView;

    iget-object v11, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41900000  # 18.0f

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v11, 0x11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v14, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v11, 0x40c00000  # 6.0f

    invoke-static {v14, v11}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v14

    iget-object v11, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v28, v4

    const/high16 v4, 0x40800000  # 4.0f

    invoke-static {v11, v4}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v11

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v14, v4, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v11, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v4, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    move-object/from16 v29, v8

    const/4 v8, -0x1

    invoke-direct {v11, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v11, 0x40800000  # 4.0f

    invoke-static {v8, v11}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v8

    iget-object v11, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v14, 0x41000000  # 8.0f

    invoke-static {v11, v14}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v11

    const/4 v14, 0x0

    invoke-virtual {v4, v14, v8, v14, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v11, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v8, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v14, v1, Lcom/example/myapplication/Exp$1;->fromCache:Z

    if-eqz v14, :cond_1de

    const-string v14, " [Offline] \ud83d\udeab"

    goto :goto_1e0

    :cond_1de
    const-string v14, ""

    :goto_1e0
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v11, 0x41600000  # 14.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v11, -0xbbbbbc

    const/high16 v14, 0x40000000  # 2.0f

    invoke-virtual {v8, v14, v14, v14, v11}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v14, 0x800013

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/16 v31, 0x2

    const/high16 v32, 0x3f800000  # 1.0f

    const/16 v33, 0x2

    const/high16 v34, -0x40800000  # -1.0f

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v30, v14

    invoke-direct/range {v30 .. v38}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move/from16 v30, v12

    const-wide/16 v11, 0x1770

    invoke-virtual {v14, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v11, -0x1

    invoke-virtual {v14, v11}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v11}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/widget/TextView;

    iget-object v12, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v12, "What\'s New⁉️:"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v12, v30

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v30, v5

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v32, v8

    const/high16 v8, 0x40a00000  # 5.0f

    invoke-static {v5, v8}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v5

    iget-object v8, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move/from16 v33, v12

    const/high16 v12, 0x40400000  # 3.0f

    invoke-static {v8, v12}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v8

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5, v12, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "\\n"

    const-string v12, "\n"

    invoke-virtual {v6, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v8, v17

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41500000  # 13.0f

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v12, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v12, 0x3f99999a  # 1.2f

    move-object/from16 v17, v6

    const/high16 v6, 0x40c00000  # 6.0f

    invoke-virtual {v5, v6, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v6, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v12, 0x41200000  # 10.0f

    invoke-static {v6, v12}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v6

    iget-object v12, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move/from16 v35, v8

    const/high16 v8, 0x41000000  # 8.0f

    invoke-static {v12, v8}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v12

    iget-object v8, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move/from16 v36, v13

    const/high16 v13, 0x41200000  # 10.0f

    invoke-static {v8, v13}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v8

    iget-object v13, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v37, v14

    const/high16 v14, 0x41000000  # 8.0f

    invoke-static {v13, v14}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v5, v6, v12, v8, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v6, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v8, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v12, 0x41400000  # 12.0f

    invoke-static {v8, v12}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v10, :cond_2d8

    const v8, -0xbbbbbc

    goto :goto_2dc

    :cond_2d8
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    :goto_2dc
    const/4 v13, 0x1

    invoke-virtual {v6, v13, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v8, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v13, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v14, 0x40c00000  # 6.0f

    invoke-static {v13, v14}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v13, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v14, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v14, 0x11

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v14, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-static {v14, v12}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12, v14, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v14, "#007BFF"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v14, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v16, v6

    const/high16 v6, 0x42c80000  # 100.0f

    invoke-static {v14, v6}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v12, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v6, Landroid/widget/Button;

    iget-object v14, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v6, v14}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v14, -0x1

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v14, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v19, v7

    const/high16 v7, 0x41a00000  # 20.0f

    invoke-static {v14, v7}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v14

    iget-object v7, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v26, v8

    const/high16 v8, 0x41200000  # 10.0f

    invoke-static {v7, v8}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move/from16 v27, v10

    const/high16 v10, 0x41a00000  # 20.0f

    invoke-static {v8, v10}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v8

    iget-object v10, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move/from16 v31, v15

    const/high16 v15, 0x41200000  # 10.0f

    invoke-static {v10, v15}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v6, v14, v7, v8, v10}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v7, Landroid/widget/Button;

    iget-object v8, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, v23

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setAllCaps(Z)V

    iget-object v10, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v14, 0x41a00000  # 20.0f

    invoke-static {v10, v14}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v10

    iget-object v14, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v15, 0x41200000  # 10.0f

    invoke-static {v14, v15}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v14

    iget-object v15, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v23, v8

    const/high16 v8, 0x41a00000  # 20.0f

    invoke-static {v15, v8}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v8

    iget-object v15, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    move-object/from16 v18, v12

    const/high16 v12, 0x41200000  # 10.0f

    invoke-static {v15, v12}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v7, v10, v14, v8, v12}, Landroid/widget/Button;->setPadding(IIII)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000  # 1.0f

    const/4 v12, -0x2

    const/4 v14, 0x0

    invoke-direct {v8, v14, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v10, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    const/high16 v12, 0x41000000  # 8.0f

    invoke-static {v10, v12}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v10

    iget-object v14, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-static {v14, v12}, Lcom/example/myapplication/Exp;->-$$Nest$smdp(Landroid/content/Context;F)I

    move-result v12

    const/4 v14, 0x0

    invoke-virtual {v8, v10, v14, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v10, v22

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v12}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-direct {v14, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v15, v14}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v12}, Lcom/example/myapplication/Exp;->-$$Nest$sfputcurrentDialog(Landroid/app/AlertDialog;)V

    invoke-static/range {p1 .. p1}, Lcom/example/myapplication/Exp;->-$$Nest$sfputlastShownJson(Lorg/json/JSONObject;)V

    iget-object v2, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    new-instance v14, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda0;

    move-object/from16 v15, v21

    invoke-direct {v14, v2, v15}, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    new-instance v14, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda1;

    invoke-direct {v14, v12, v2}, Lcom/example/myapplication/Exp$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v7, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    iget-object v2, v1, Lcom/example/myapplication/Exp$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/example/myapplication/Exp;->-$$Nest$smscheduleJsonRefresh(Landroid/content/Context;)V
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_429} :catch_42a

    goto :goto_42b

    :catch_42a
    move-exception v0

    :goto_42b
    nop

    return-void

    :cond_42d
    :goto_42d
    return-void

    :cond_42e
    :goto_42e
    return-void
.end method
